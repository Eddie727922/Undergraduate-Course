function [x, iter, out] = gl_ADMM_dual(x0, A, b, mu, opts)
    % 设置默认参数
    if nargin < 5, opts = []; end
    if ~isfield(opts, 'n'), opts.n = 512; end
    if ~isfield(opts, 'l'), opts.l = 2; end
    if ~isfield(opts, 'm'), opts.m = 256; end
    if ~isfield(opts, 'thres'), opts.thres = 1e-5; end
    if ~isfield(opts, 'maxiter'), opts.maxiter = 2e4; end
    if ~isfield(opts, 'sigma'), opts.sigma = 1; end
    
    % 新增绘图选项
    if ~isfield(opts, 'plot'), opts.plot = true; end

    function y = Prox(x, mu, t)
        p = mu * t;
        x_norm2 = vecnorm(x');
        y = max(x_norm2 - p, 0) ./ x_norm2;
        y = x .* y';
    end

    function [value] = value(x, A, b, mu, opts)
        value = 0.5 * (norm(A * x - b, 'fro') ^ 2) + mu * sum(reshape(norms(x, 2, 2), [], 1));
    end
    
    function [S] = fix(S, mu)
        S_norm2 = vecnorm(S')';
        S(S_norm2 > mu, :) = S(S_norm2 > mu, :) ./ S_norm2(S_norm2 > mu) .* mu;
    end
    
    T = b - A * x0;
    S = A' * T;
    S = fix(S, mu);
    x = x0;
    out = struct();
    out.f_hist = zeros(1, opts.maxiter);
    out.f_hist_best = zeros(1, opts.maxiter);
    f_best = inf;
    iter = 0;
    f_optim = 0.538327;
    t = 0.0001;
    t_ = 0.0001;
    
    % 新增：存储每10次迭代的函数值用于绘图
    if opts.plot
        fval_hist = [];
    end
    
    while true
        iter = iter + 1;
        out.f_hist(iter) = value(x, A, b, mu, opts);
        f_best = min([f_best, out.f_hist(iter)]);
        out.f_hist_best(iter) = f_best;
        
        % 记录每10次迭代的函数值
        if opts.plot && mod(iter, 10) == 0
            fval_hist(end+1) = out.f_hist(iter);
        end
        
        T = (opts.sigma * (A * A') + eye(opts.m)) \ (b + opts.sigma * A * S - A * x);
        S = A' * T + x / opts.sigma;
        S = fix(S, mu);
        x = x + opts.sigma * (A' * T - S);
        x(abs(x) < opts.thres) = 0;
        
        if abs(out.f_hist(iter) - f_optim) < 1e-6
            break
        end
        if iter == 1e5
            break
        end
    end
    
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
        title('ADMM-dual收敛曲线');
        grid on;
        
        % 保存到指定文件夹
        save_path = fullfile(save_dir, 'gl_ADMM_dual_convergence.png');
        saveas(gcf, save_path);
        close(gcf);
        
        fprintf('收敛图已保存到: %s\n', save_path);
    end
end