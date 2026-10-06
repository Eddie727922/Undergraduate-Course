function [x, iter, out] = gl_GD_primal(x0, A, b, mu_final, opts)
    %% 连续化策略参数
    mu_start = 33*mu_final;           % 起始正则化参数（较大值）
    eta = 0.99;                % 衰减因子
    max_total_iter = 1000000; % 总最大迭代次数
    
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
    l = size(x0, 2);
    
    % 准备输出结构
    out.val = [];
    out.gradnorm = [];
    out.alpha = [];
    iter = 0;
    out.fval_hist = [];
    
    %% 连续化策略主循环
    for t = 1:mu_steps
        mu_current = mu_values(t);
        
        % 设置当前子问题的opts
        opts_t = struct();
        
        % 计算当前δ：与μ成比例
        delta_ratio = 1e-3;
        delta_final = delta_ratio * mu_current;
        opts_t.delta_final = delta_final;
        
        % 设置当前子问题的最大迭代次数
        opts_t.maxit = maxit_per_mu;
        
        % 设置当前子问题的收敛精度（随着μ减小而收紧）
        opts_t.tol_fval = 10^(-4 - t);  % 函数值变化容忍度
        opts_t.tol_grad = 10^(-1 - t);  % 梯度范数容忍度
        
        % 调用已有的固定步长函数求解当前子问题
        [x, iter_t, out_t] = gl_GD_fixed_step(x, A, b, mu_current, opts_t);
        
        % 累积迭代次数
        iter = iter + iter_t;
        
        % 合并输出信息（根据需要选择性合并）
        % 这里我们只合并关键信息
        if t == 1
            out.val = out_t.val;
            out.gradnorm = out_t.gradnorm;
            out.alpha = out_t.alpha;
        else
            % 将当前子问题的输出追加到总输出中
            out.val = [out.val; out_t.val];
            out.gradnorm = [out.gradnorm; out_t.gradnorm];
            out.alpha = [out.alpha; out_t.alpha];
        end
        
        % 合并目标值历史记录（每100次迭代记录一次）
        out.fval_hist = [out.fval_hist, out_t.fval_hist];
        
        % 显示当前连续化步骤的信息
        fprintf('连续化步 %d/%d: μ=%.2e → μ=%.2e, 子问题迭代 %d 次\n', ...
            t, mu_steps, mu_current, mu_final, iter_t);
    end
    
    %% 计算最终的目标函数值（原始非光滑形式）
    residual = A * x - b;
    f_val_final = 0.5 * norm(residual, 'fro')^2;
    
    group_norm_final = 0;
    for i = 1:n
        group_norm_final = group_norm_final + norm(x(i, :), 2);
    end
    
    out.fval = f_val_final + mu_final * group_norm_final;
    
    %% 绘图并保存
    save_dir = './report/img/';
    if ~exist(save_dir, 'dir')
        mkdir(save_dir);
    end

    figure('Visible', 'off');
    plot(out.fval_hist, 'b-', 'LineWidth', 1.5);
    xlabel('记录点（每100次迭代）');
    ylabel('目标函数值');
    title('梯度下降收敛曲线');
    grid on;
    
    save_path = fullfile(save_dir, 'gl_GD_primal_convergence.png');
    saveas(gcf, save_path);
    close(gcf);
end


function [x, iter, out] = gl_GD_fixed_step(x0, A, b, mu, opts)
    %% 参数初始化
    if nargin < 5
        opts = struct();
    end
    
    % 设置默认参数
    if isfield(opts, 'maxit')
        maxit = opts.maxit;
    else
        maxit = 1000000;
    end
    
    if isfield(opts, 'tol_fval')
        tol_fval = opts.tol_fval;
    else
        tol_fval = 1e-8;
    end
    
    if isfield(opts, 'tol_grad')
        tol_grad = opts.tol_grad;
    else
        tol_grad = 1e-6;
    end
    
    %% 辅助函数：计算目标函数值（固定 δ = μ/1000）
    function obj_val = compute_obj(x)
        residual = A * x - b;
        f_val = 0.5 * norm(residual, 'fro')^2;
        
        delta = mu / 1000;  % 固定 δ 为 μ/1000
        group_norm_smooth = 0;
        for i = 1:n
            xi_norm = norm(x(i, :), 2);
            if xi_norm <= delta
                group_norm_smooth = group_norm_smooth + (xi_norm^2) / (2 * delta);
            else
                group_norm_smooth = group_norm_smooth + (xi_norm - delta/2);
            end
        end
        
        obj_val = f_val + mu * group_norm_smooth;
    end    
    
    %% 辅助函数：计算梯度（固定 δ = μ/1000）
    function grad = compute_grad(x)
        % 第一部分梯度
        grad_f = A' * (A * x - b);
        
        % 第二部分梯度
        delta = mu / 1000;  % 固定 δ 为 μ/1000
        grad_g = zeros(n, l);
        for i = 1:n
            xi_norm = norm(x(i, :), 2);
            if xi_norm <= delta
                grad_g(i, :) = (mu / delta) * x(i, :);
            else
                grad_g(i, :) = mu * x(i, :) / xi_norm;
            end
        end
        
        grad = grad_f + grad_g;
    end

    %% 初始化变量
    x = x0;
    [m, n] = size(A);
    l = size(x0, 2);
    
    % 存储输出信息
    out.val = zeros(maxit, 1);
    out.gradnorm = zeros(maxit, 1);
    out.alpha = zeros(maxit, 1);
    iter = 0;
    out.fval_hist = [];  % 每100次记录一次目标值
    
    % 计算Lipschitz常数和保守步长
    delta = mu / 1000;  % 固定 δ 为 μ/1000
    normA2 = norm(A, 2)^2;
    L = normA2 + mu / delta;
    alpha_conservative = 1 / L;
    
    % 初始化BB步长变量
    x_prev = x;
    grad_prev = compute_grad(x);
    obj_val_prev = compute_obj(x);
    
    %% 主循环（固定δ优化）
    for k = 1:maxit
        iter = k;  % 迭代次数
        
        % 计算当前点的函数值和梯度
        obj_val = compute_obj(x);
        grad = compute_grad(x);
        grad_norm = norm(grad, 'fro');
        
        % 存储输出信息
        out.val(k) = obj_val;
        out.gradnorm(k) = grad_norm;

        % 每100次记录一次目标值
        if mod(k, 100) == 0
            out.fval_hist(end+1) = obj_val;
        end
        
        % 检查收敛条件
        if abs(obj_val - obj_val_prev) < tol_fval || grad_norm < tol_grad
            break;
        end
        
        %% 使用BB步长更新
        if k > 1
            % 计算BB步长: alpha = (s'*s) / (s'*y)
            s_vec = x(:) - x_prev(:);
            y_vec = grad(:) - grad_prev(:);
            
            s_norm2 = s_vec' * s_vec;
            s_dot_y = s_vec' * y_vec;
            
            if abs(s_dot_y) > 1e-12
                alpha = s_norm2 / s_dot_y;
            else
                alpha = alpha_conservative;
            end
            
            % 限制步长范围
            alpha = min(max(alpha, alpha_conservative/10), alpha_conservative*10);
        else
            alpha = alpha_conservative;
        end
        
        % 保存旧点用于下一次BB步长计算
        x_prev = x;
        grad_prev = grad;
        obj_val_prev = obj_val;
        
        % 更新点
        x = x - alpha * grad;
        out.alpha(k) = alpha;
    end
    
    %% 截断输出数组
    out.val = out.val(1:iter);
    out.gradnorm = out.gradnorm(1:iter);
    out.alpha = out.alpha(1:iter);
    
    % 计算最终的目标函数值（原始非光滑形式）
    residual = A * x - b;
    f_val_final = 0.5 * norm(residual, 'fro')^2;
    
    group_norm_final = 0;
    for i = 1:n
        group_norm_final = group_norm_final + norm(x(i, :), 2);
    end
    
    out.fval = f_val_final + mu * group_norm_final;
end