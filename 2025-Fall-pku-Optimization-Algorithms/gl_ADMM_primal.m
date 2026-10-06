function [x, iter, out] = gl_ADMM_primal_continuation(x0, A, b, mu_final, opts)
    %% 连续化策略参数
    mu_start = 100*mu_final;           % 起始正则化参数（较大值）
    eta = 0.1;                % 衰减因子
    max_total_iter = 1000000;  % 总最大迭代次数
    
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
    out.fval_hist = []; % 记录每次迭代后的值
    iter = 0;
    f_best_history = []; % 记录每个mu的最佳值
    
    %% 连续化策略主循环（对μ）
    for t = 1:mu_steps
        mu_current = mu_values(t);
        
        % 设置当前子问题的opts
        opts_t = struct();
        
        % 从外部opts复制参数到内部opts_t
        if isfield(opts, 'maxit')
            opts_t.maxit = opts.maxit;
        else
            opts_t.maxit = maxit_per_mu;
        end
        
        if isfield(opts, 'tol')
            opts_t.tol = opts.tol * 10^(t/2);  % 逐渐收紧容忍度
        else
            opts_t.tol = 1e-8;
        end
        
        if isfield(opts, 'rho')
            opts_t.rho = opts.rho;
        else
            opts_t.rho = 2;
        end
        
        if isfield(opts, 'eta')
            opts_t.eta = opts.eta;
        else
            L = norm(A'*A);  % Lipschitz常数
            opts_t.eta = 2 / L;
        end
        
        if isfield(opts, 'verbose')
            opts_t.verbose = opts.verbose && (t == mu_steps);  % 只在最后一步显示详细信息
        else
            opts_t.verbose = (t == mu_steps);  % 只在最后一步显示
        end
        
        opts_t.plot = false;  % 内层不绘图
        
        % 显示当前连续化步骤的信息
        fprintf('连续化步 %d/%d: μ=%.2e → μ=%.2e\n', ...
            t, mu_steps, mu_current, mu_final);
        
        % 调用已有的ADMM原始函数求解当前子问题
        [x, iter_t, out_t] = gl_ADMM_primal_fixed(x, A, b, mu_current, opts_t);
        
        % 累积迭代次数
        iter = iter + iter_t;
        
        % 合并目标值历史记录
        % 注意：ADMM原始算法每100次记录一次，我们需要调整索引
        if isfield(out_t, 'fval_hist') && ~isempty(out_t.fval_hist)
            out.fval_hist = [out.fval_hist, out_t.fval_hist];
        end
        
        % 记录当前mu的最佳值（使用最终目标值）
        if isfield(out_t, 'fval')
            % 确保获取的是最终目标值（最后一个元素）
            if isvector(out_t.fval) && length(out_t.fval) > 1
                final_fval = out_t.fval(end);
            else
                final_fval = out_t.fval;
            end
            f_best_history(end+1) = final_fval;
        end
        
        fprintf('  子问题迭代 %d 次，最终目标值: %.4e\n', iter_t, final_fval);
    end
    
    %% 设置最终输出
    if exist('final_fval', 'var')
        out.fval = final_fval;
    else
        out.fval = [];
    end
    out.iter = iter;
    out.f_best_history = f_best_history;  % 可选：保存每个mu的最佳值
    
    %% 绘图并保存
    save_dir = './report/img/';
    if ~exist(save_dir, 'dir')
        mkdir(save_dir);
    end

    figure('Visible', 'off');
    plot(out.fval_hist, 'b-', 'LineWidth', 1.5);
    xlabel('记录点（每100次迭代）');
    ylabel('目标函数值');
    title('ADMM-primal收敛曲线');
    grid on;
    
    save_path = fullfile(save_dir, 'gl_ADMM_primal.png');
    saveas(gcf, save_path);
    close(gcf);
end
function [x, iter, out] = gl_ADMM_primal_fixed(x0, A, b, mu, opts)
    % 设置默认参数
    if nargin < 5 || isempty(opts)
        opts = struct();
    end
    
    if ~isfield(opts, 'maxit')
        opts.maxit = 1000000; 
    end
    if ~isfield(opts, 'tol')
        opts.tol = 1e-8; 
    end
    if ~isfield(opts, 'rho')
        opts.rho = 2; 
    end
    if ~isfield(opts, 'eta')
        % 计算梯度下降步长，确保收敛
        L = norm(A'*A);  % Lipschitz常数
        opts.eta = 2 / L;  % 稍微保守以确保收敛
    end
    if ~isfield(opts, 'verbose')
        opts.verbose = true; 
    end
    
    % 新增绘图相关参数
    if ~isfield(opts, 'plot')
        opts.plot = true; 
    end
    
    % 获取矩阵维度
    [m, n] = size(A);
    l = size(b, 2);
    if size(x0, 2) ~= l
        error('x0的列数必须与b的列数相同');
    end
    
    % 初始化变量
    x = x0;
    z = x0;  % 辅助变量
    y = zeros(n, l);  % 拉格朗日乘子
    
    % 预计算一些量以提高效率
    ATA = A'*A;
    ATb = A'*b;
    
    % 存储迭代信息
    out.fval = zeros(opts.maxit, 1);
    out.prim_res = zeros(opts.maxit, 1);
    out.dual_res = zeros(opts.maxit, 1);
    out.relerr = zeros(opts.maxit, 1);
    out.time = zeros(opts.maxit, 1);
    
    % 新增：存储每100次迭代的函数值用于绘图
    % 总是初始化fval_hist，即使不绘图
    fval_hist = [];
    
    % 收敛容差
    eps_abs = opts.tol;
    eps_rel = opts.tol;
    
    % 开始计时
    start_time = tic;
    
    % ADMM主循环
    for iter = 1:opts.maxit
        % 记录开始时间
        iter_start = tic;
        
        % 保存上一次迭代的z值
        z_old = z;
        
        % 1. 更新x (使用线性化技巧)
        grad = ATA*x - ATb;  % 梯度: A'(Ax - b)
        v = z - y/opts.rho;
        
        % 线性化更新公式
        x_new = (1/(1 + opts.eta*opts.rho)) * (x - opts.eta*grad + opts.eta*opts.rho*v);
        
        % 2. 更新z (分组软阈值)
        w = x_new + y/opts.rho;
        
        % 计算每行的范数
        row_norms = sqrt(sum(w.^2, 2));
        
        % 应用分组软阈值算子
        % 对于每行i: z_i = max(1 - mu/(rho*||w_i||), 0) * w_i
        shrinkage = max(1 - mu./(opts.rho*row_norms), 0);
        
        % 避免除零
        shrinkage(isnan(shrinkage)) = 0;
        
        % 更新z
        z = bsxfun(@times, w, shrinkage);
        
        % 3. 更新拉格朗日乘子
        r = x_new - z;  % 原始残差
        y = y + opts.rho * r;
        
        % 4. 更新x
        x = x_new;
        
        % 计算收敛指标
        prim_res = norm(r, 'fro');  % 原始残差
        dual_res = opts.rho * norm(z - z_old, 'fro');  % 对偶残差
        
        % 计算目标函数值
        fval = 0.5 * norm(A*x - b, 'fro')^2 + mu * sum(sqrt(sum(x.^2, 2)));
        
        % 存储迭代信息
        out.fval(iter) = fval;
        out.prim_res(iter) = prim_res;
        out.dual_res(iter) = dual_res;
        out.time(iter) = toc(start_time);
        
        % 记录每100次迭代的函数值
        if mod(iter, 100) == 0
            fval_hist(end+1) = fval;
        end
        
        % 计算相对误差 (如果需要)
        % 注意: 实际应用中通常不知道精确解，这里仅为演示
        % 实际实现时可以注释掉
        if exist('u', 'var')
            out.relerr(iter) = norm(x - u, 'fro') / (1 + norm(u, 'fro'));
        end
        
        % 检查收敛条件
        eps_pri = sqrt(n*l) * eps_abs + eps_rel * max(norm(x, 'fro'), norm(z, 'fro'));
        eps_dual = sqrt(n*l) * eps_abs + eps_rel * norm(y, 'fro');
        
        if prim_res < eps_pri && dual_res < eps_dual
            break;
        end
        
        % 可选: 自适应调整rho
        if mod(iter, 50) == 0
            % 简单的自适应策略
            if prim_res > 10 * dual_res
                opts.rho = opts.rho * 2;
            elseif dual_res > 10 * prim_res
                opts.rho = opts.rho / 2;
            end
        end
        
        % 显示迭代信息
        if opts.verbose && mod(iter, 100) == 0
            fprintf('迭代 %4d: 目标值 = %.6e, 原始残差 = %.2e, 对偶残差 = %.2e\n', ...
                    iter, fval, prim_res, dual_res);
        end
        
        % 记录迭代时间
        iter_time = toc(iter_start);
    end
    
    %% 截断未使用的存储空间
    out.fval = out.fval(1:iter);
    out.prim_res = out.prim_res(1:iter);
    out.dual_res = out.dual_res(1:iter);
    out.relerr = out.relerr(1:iter);
    out.time = out.time(1:iter);
    
    % 保存目标值历史记录
    out.fval_hist = fval_hist;
    
   
end