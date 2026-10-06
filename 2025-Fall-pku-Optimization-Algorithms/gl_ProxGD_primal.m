function [x, iter, out] = gl_ProxGD_primal(x0, A, b, mu_final, opts)
    %% 连续化策略参数
    mu_start = 1000*mu_final;           % 起始正则化参数（较大值）
    eta = 0.1;                % 衰减因子
    max_total_iter = 100000;   % 总最大迭代次数
    
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
    maxit_per_mu = ceil(max_total_iter / mu_steps);
    
    %% 初始化
    x = x0;
    [m, n] = size(A);
    l = size(b, 2);
    
    % 准备输出结构
    out.obj = [];
    out.grad_norm = [];
    iter = 0;
    out.fval_hist = [];
    
    %% 连续化策略主循环（对μ）
    for t = 1:mu_steps
        mu_current = mu_values(t);
        
        % 设置当前子问题的opts
        opts_t = struct();
        
        % 设置当前子问题的参数
        opts_t.maxit = maxit_per_mu;
        opts_t.tol = 10^(-3 - t/2);  % 随着连续化步数增加而收紧容忍度
        opts_t.beta = 0.9;
        opts_t.t_init = 0.06;
        
        % 显示当前连续化步骤的信息
        fprintf('连续化步 %d/%d: μ=%.2e → μ=%.2e\n', ...
            t, mu_steps, mu_current, mu_final);
        
        % 调用已有的近端梯度下降函数求解当前子问题
        [x, iter_t, out_t] = gl_ProxGD_fixed(x, A, b, mu_current, opts_t);
        
        % 累积迭代次数
        iter = iter + iter_t;
        
        % 合并输出信息
        if t == 1
            out.obj = out_t.obj;
            out.grad_norm = out_t.grad_norm;
        else
            % 注意：这里需要调整索引，因为每个子问题的输出长度可能不同
            obj_len = length(out_t.obj);
            grad_len = length(out_t.grad_norm);
            
            % 如果新输出比当前数组短，扩展当前数组
            current_len = length(out.obj);
            if current_len < iter
                out.obj = [out.obj; zeros(iter-current_len, 1)];
                out.grad_norm = [out.grad_norm; zeros(iter-current_len, 1)];
            end
            
            % 将当前子问题的输出追加到总输出中
            out.obj(iter-iter_t+1:iter) = out_t.obj;
            out.grad_norm(iter-iter_t+1:iter) = out_t.grad_norm;
        end
        
        % 合并目标值历史记录（每次迭代记录一次）
        out.fval_hist = [out.fval_hist, out_t.fval_hist];
        
        fprintf('  子问题迭代 %d 次，最终目标值: %.4e\n', iter_t, out_t.fval);
    end
    
    %% 截断输出数组
    out.obj = out.obj(1:iter);
    out.grad_norm = out.grad_norm(1:iter);
    out.fval = out_t.fval;  % 使用最后一个子问题的最终值
    
    %% 绘图并保存
    save_dir = './report/img/';
    if ~exist(save_dir, 'dir')
        mkdir(save_dir);
    end

    figure('Visible', 'off');
    plot(out.fval_hist, 'b-', 'LineWidth', 1.5);
    xlabel('记录点（每次迭代）');
    ylabel('目标函数值');
    title('近端梯度下降收敛曲线');
    grid on;
    
    save_path = fullfile(save_dir, 'gl_ProxGD_primal.png');
    saveas(gcf, save_path);
    close(gcf);
end

function [x, iter, out] = gl_ProxGD_fixed(x0, A, b, mu, opts)
    %% 参数设置
    % 如果opts不存在，创建默认结构
    if nargin < 5 || isempty(opts)
        opts = struct();
    end
    
    % 设置默认参数，如果opts中有对应字段则覆盖
    if isfield(opts, 'maxit')
        maxit = opts.maxit;
    else
        maxit = 100000;
    end
    
    if isfield(opts, 'tol')
        tol = opts.tol;
    else
        tol = 1e-6;
    end
    
    if isfield(opts, 'stepsize')
        stepsize = opts.stepsize;
    else
        stepsize = [];   % 固定步长
    end
    
    if isfield(opts, 'beta')
        beta = opts.beta;
    else
        beta = 0.9;      % 线搜索衰减因子
    end
    
    if isfield(opts, 't_init')
        t_init = opts.t_init;
    else
        t_init = 0.06;   % 初始步长
    end
    
    [m, n] = size(A);
    l = size(b, 2);
    x = x0;
    
    % 预计算一些矩阵
    AtA = A' * A;
    Atb = A' * b;
    
    out = struct();
    out.obj = zeros(maxit, 1);  % 目标函数值
    out.grad_norm = zeros(maxit, 1);  % 梯度映射的范数
    
    % 添加：用于绘图的目标值记录（每100次记录一次）
    out.fval_hist = [];

    % 开始迭代
    for iter = 1:maxit
        % 保存前一步的 x
        x_old = x;
        
        % 计算当前梯度
        grad = AtA * x - Atb;
        
        % 回溯线搜索确定步长
        t = t_init;
        while true
            % 临时更新
            V = x - t * grad;
            
            % Group soft-thresholding（逐行）
            x_temp = zeros(size(x));
            for i = 1:n
                row_norm = norm(V(i,:), 2);
                if row_norm > t * mu
                    x_temp(i,:) = (1 - t * mu / row_norm) * V(i,:);
                else
                    x_temp(i,:) = 0;
                end
            end
            
            % 计算线搜索条件 (PPT中的不等式(1))
            % g(x^+) ≤ g(x) + ∇g(x)^T(x^+ - x) + (1/(2t))||x^+ - x||^2
            g_x = 0.5 * norm(A * x - b, 'fro')^2;
            g_temp = 0.5 * norm(A * x_temp - b, 'fro')^2;
            
            diff = x_temp - x;
            grad_term = sum(grad(:) .* diff(:));
            norm_diff = norm(diff, 'fro')^2;
            
            if g_temp <= g_x + grad_term + (1/(2*t)) * norm_diff
                x = x_temp;
                break;
            else
                t = beta * t;  % 减小步长
            end
        end
        
        % 计算目标函数值
        residual = A * x - b;
        g_val = 0.5 * norm(residual, 'fro')^2;
        h_val = mu * sum(sqrt(sum(x.^2, 2)));  % ||x||_{1,2}
        out.obj(iter) = g_val + h_val;

        % 每次记录一次目标值
        if mod(iter, 1) == 0
            out.fval_hist(end+1) = out.obj(iter);
        end
        
        % 计算梯度映射范数
        out.grad_norm(iter) = norm(x_old - x, 'fro') / t;
        
        % 检查停止准则
        if iter > 1
            rel_change = norm(x - x_old, 'fro') / (1 + norm(x_old, 'fro'));
            if rel_change < tol && out.grad_norm(iter) < tol
                break;
            end
        end
        
        % 每 100 次迭代显示信息
        % 可选：注释掉以避免输出太多信息
        %{
        if mod(iter, 100) == 0
            fprintf('迭代 %4d: 目标值 = %.4e, 梯度范数 = %.4e, 步长 = %.4e\n', ...
                    iter, out.obj(iter), out.grad_norm(iter), t);
        end
        %}
    end
    
    % 截断输出
    out.obj = out.obj(1:iter);
    out.fval = out.obj(iter);
    out.grad_norm = out.grad_norm(1:iter);
    
end