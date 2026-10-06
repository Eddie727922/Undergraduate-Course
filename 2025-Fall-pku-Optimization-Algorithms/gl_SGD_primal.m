function [x, iter, out] = gl_SGD_primal_continuation(x0, A, b, mu_final, opts)
    %% 连续化策略参数
    mu_start = 100*mu_final;           % 起始正则化参数（较大值）
    eta = 0.1;                % 衰减因子
    max_total_iter = 10000;    % 总最大迭代次数

    % 使用正则表达式提取数值
    file_content = fileread('gl_cvx_gurobi.txt');
    
    % 查找包含"Optimal objective"的行并提取数值
    pattern = 'Optimal objective\s+([\d\.eE+-]+)';
    match = regexp(file_content, pattern, 'tokens');
    
    if ~isempty(match)
        opts.f_prev = str2double(match{1}{1});
    else
        error('未找到Optimal objective行');
    end

    % 计算需要多少步从mu_start衰减到mu_final
    if mu_start <= mu_final
        mu_steps = 1;
    else
        mu_steps = ceil(log10(mu_final/mu_start)/log10(eta)) + 1;
    end
    
    % 生成μ序列（从大到小）
    mu_values = zeros(1, mu_steps);
    mu_values(1) = mu_start;
    for t = 2:mu_steps
        mu_values(t) = max(mu_values(t-1) * eta, mu_final);
    end
    mu_values(end) = mu_final;
    
    % 为每个μ子问题分配最大迭代次数
    maxiter_per_mu = ceil(max_total_iter / mu_steps);
    
    %% 初始化
    x = x0;
    [m, n] = size(A);
    l = size(b, 2);
    
    % 准备输出结构
    out.fval_hist = []; % 记录每次迭代后的值
    iter = 0;
    f_best_history = []; % 记录每个mu的最佳值
    
    %% 连续化策略主循环（对μ）
    for t = 1:mu_steps
        mu_current = mu_values(t);
        
        % 设置当前子问题的opts
        opts_t = struct();
        
        % 设置当前子问题的参数
        opts_t.maxiter = maxiter_per_mu;
        if isfield(opts, 'step_type')
            opts_t.step_type = opts.step_type;
        else
            opts_t.step_type = 'adaptive';  % 默认自适应步长
        end
        if isfield(opts, 'step_size')
            opts_t.step_size = opts.step_size;
        else
            opts_t.step_size = 0.0001;  % 默认步长
        end
        opts_t.plot = false;  % 内层不绘图
        opts_t.f_prev = opts.f_prev;
        % 显示当前连续化步骤的信息
        fprintf('连续化步 %d/%d: μ=%.2e → μ=%.2e\n', ...
            t, mu_steps, mu_current, mu_final);
        
        % 注意：f_pre可能是针对最终mu_final的，这里我们使用相同的f_pre
        % 如果需要更精确，可以为每个mu计算不同的f_pre，但这里简化处理
        [x, iter_t, out_t] = gl_SGD_primal_fixed(x, A, b, mu_current, opts_t);
        
        % 累积迭代次数
        iter = iter + iter_t;
        
        % 合并目标值历史记录
        out.fval_hist = [out.fval_hist, out_t.fval_hist];
        
        % 记录当前mu的最佳值
        f_best_history(end+1) = out_t.fval;
        
        fprintf('  子问题迭代 %d 次，最终目标值: %.4e\n', iter_t, out_t.fval);
    end
    
    %% 设置最终输出
    out.fval = out_t.fval;
    out.data_fit = out_t.data_fit;
    out.reg_term = out_t.reg_term;
    out.iter = iter;
    
    %% 绘图并保存
    save_dir = './report/img/';
    if ~exist(save_dir, 'dir')
        mkdir(save_dir);
    end

    figure('Visible', 'off');
    plot(out.fval_hist, 'b-', 'LineWidth', 1.5);
    xlabel('记录点（每100次迭代）');
    ylabel('目标函数值');
    title('SGD收敛曲线');
    grid on;
    
    save_path = fullfile(save_dir, 'gl_SGD_primal.png');
    saveas(gcf, save_path);
    close(gcf);
end

function [x, iter, out] = gl_SGD_primal_fixed(x0, A, b, mu, opts)
    %% 初始化
    [m, n] = size(A);
    l = size(b, 2);
    x = x0;
    f_best = inf;           
    x_best = x; 
    iter = 0;
    
    f_star = opts.f_prev; % 最优值，用于构造步长
    tol = 1e-6;
    
    %% 默认参数设置
    if nargin < 5 || isempty(opts)
        opts = struct();
    end
    
    if ~isfield(opts, 'maxiter') || isempty(opts.maxiter)
        maxiter = 10000;
    else
        maxiter = opts.maxiter;
    end
    
    if ~isfield(opts, 'step_type') || isempty(opts.step_type)
        step_type = 'adaptive';  % 'constant' 或 'diminishing'或'adaptive'
    else
        step_type = opts.step_type;
    end
    
    if ~isfield(opts, 'step_size') || isempty(opts.step_size)
        step_size = 0.0001;
    else
        step_size = opts.step_size;
    end
    
    % 是否绘图
    if ~isfield(opts, 'plot') || isempty(opts.plot)
        do_plot = true;
    else
        do_plot = opts.plot;
    end
    
    %% 输出初始化
    out = struct();
    out.fval_hist = []; % 记录每次迭代后的值
    
    %% 主循环
    for k = 1:maxiter
        residual = A * x - b;
        grad_fit = A' * residual;
        iter = k;
        
        % 计算当前目标函数值并存储
        data_fit = 0.5 * norm(residual, 'fro')^2;
        reg_term = mu * sum(sqrt(sum(x.^2, 2)));
        f_val = data_fit + reg_term;
        
        if f_val < f_best
            f_best = f_val;
            x_best = x;
        end
        
        if f_val - f_star < tol
            break
        end
        
        % 每100次记录一次
        if mod(k, 100) == 0
            out.fval_hist(end+1) = f_val;
        end
        
        % 正则化项的次梯度
        grad_reg = zeros(n, l);
        for i = 1:n
            row_norm = norm(x(i, :), 2);
            if row_norm > 1e-10
                grad_reg(i, :) = mu * x(i, :) / row_norm;
            end
            % 如果 row_norm = 0，次梯度为 0
        end
        
        % 总次梯度
        g = grad_fit + grad_reg;
        
        % 计算步长（三种情况）
        switch step_type
            case 'constant'
                alpha = step_size;
            case 'diminishing'
                alpha = step_size / sqrt(k);
            case 'adaptive'
                % 自适应步长公式: alpha_i = (f(x^i) - f^*) / ||g^i||_2^2 （书本P230）
                norm_g_squared = norm(g, 'fro')^2;
                if norm_g_squared > 1e-12  
                    diff = f_val - f_star;
                    alpha = diff / (norm_g_squared + 1e-6); % 加一个1e-6稳定
                else
                    alpha = step_size;
                end
        end
        
        % 更新
        x = x - alpha * g;
    end
    
    %% 后处理
    x = x_best;
    out.fval = f_val;
    out.data_fit = data_fit;
    out.reg_term = reg_term;
    out.iter = iter;
end