function [x, iter, out] = gl_ALM_dual(x0, A, b, mu, opts)
    % 设置默认参数
    if nargin < 5, opts = []; end
    if ~isfield(opts, 'n'), opts.n = 512; end
    if ~isfield(opts, 'l'), opts.l = 2; end
    if ~isfield(opts, 'm'), opts.m = 256; end
    if ~isfield(opts, 'thres'), opts.thres = 1e-6; end
    if ~isfield(opts, 'maxiter'), opts.maxiter = 2e4; end
    if ~isfield(opts, 'sigma'), opts.sigma = 1; end
    if ~isfield(opts, 'plot'), opts.plot = true; end
    
    function y = Prox(x, mu, t)
        % 近端算子函数
        p = mu * t;
        x_norm2 = vecnorm(x');
        y = max(x_norm2 - p, 0) ./ x_norm2;
        y = x .* y';
    end

    function [value] = value(x, A, b, mu, opts)
        % 计算目标函数值
        value = 0.5 * (norm(A * x - b, 'fro') ^ 2) + mu * sum(reshape(norms(x, 2, 2), [], 1));
    end
    
    function [S] = fix(S, mu)
        % 修复S的函数
        S_norm2 = vecnorm(S')';
        S(S_norm2 > mu, :) = S(S_norm2 > mu, :) ./ S_norm2(S_norm2 > mu) .* mu;
    end
    
    % 初始化变量
    T = b - A * x0;
    S = A' * T;
    S = fix(S, mu);
    x = x0;
    
    % 初始化输出结构体
    out = struct();
    out.f_hist = zeros(1, opts.maxiter);
    out.f_hist_best = zeros(1, opts.maxiter);
    
    % 新增：存储每10次迭代的函数值用于绘图
    if opts.plot
        fval_hist = [];
    end
    
    f_best = inf;
    iter = 0;

    % 使用正则表达式提取数值
    file_content = fileread('gl_cvx_gurobi.txt');
    
    % 查找包含"Optimal objective"的行并提取数值
    pattern = 'Optimal objective\s+([\d\.eE+-]+)';
    match = regexp(file_content, pattern, 'tokens');
    
    if ~isempty(match)
        f_optim = str2double(match{1}{1});
    else
        error('未找到Optimal objective行');
    end
    t = 0.0001;
    t_ = 0.0001;

    % 主循环
    while true
        iter = iter + 1;
        
        % 计算当前函数值
        current_fval = value(x, A, b, mu, opts);
        out.f_hist(iter) = current_fval;
        
        % 更新最优函数值
        f_best = min([f_best, current_fval]);
        out.f_hist_best(iter) = f_best;
        
        % 记录每10次迭代的函数值
        if opts.plot && mod(iter, 10) == 0
            fval_hist(end+1) = current_fval;
        end
        
        % 更新T
        T = (opts.sigma * (A * A') + eye(opts.m)) \ (b + opts.sigma * A * S - A * x);
        
        % 更新S
        S = A' * T + x / opts.sigma;
        S = fix(S, mu);
        
        % 更新x
        x = x + opts.sigma * (A' * T - S);
        x(abs(x) < opts.thres) = 0;
        
        % 检查收敛条件
        if abs(current_fval - f_optim) < 1e-5
            break;
        end
        
        % 检查最大迭代次数
        if iter >= opts.maxiter
            break;
        end
    end
    
    % 截断历史记录
    out.f_hist = out.f_hist(1:iter);
    out.f_hist_best = out.f_hist_best(1:iter);
    out.fval = f_best;
    
    %% 绘图并保存到report/img文件夹
    if opts.plot && ~isempty(fval_hist)
        % 检查并创建文件夹
        save_dir = './report/img/';
        if ~exist(save_dir, 'dir')
            mkdir(save_dir);
        end

        figure('Visible', 'off');
        plot(fval_hist, 'b-', 'LineWidth', 1.5);
        xlabel('记录点（每10次迭代）');
        ylabel('目标函数值');
        title('ALM-dual收敛曲线');
        grid on;
        
        % 保存到指定文件夹
        save_path = fullfile(save_dir, 'gl_ALM_dual_convergence.png');
        saveas(gcf, save_path);
        close(gcf);
        
        fprintf('收敛图已保存到: %s\n', save_path);
    end
end