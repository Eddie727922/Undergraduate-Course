function [x, iter, out] = gl_FGD_primal(x0, A, b, mu_final, opts)
    %% 连续化策略参数
    mu_start = 10*mu_final;           % 起始正则化参数（较大值）
    eta = 0.1;                % 衰减因子
    max_total_iter = 1000000;  % 总最大迭代次数
    delta_ratio = 1e-5;        % δ/μ固定比例
    
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
    iter = 0;
    out.fval_hist = [];
    
    %% 连续化策略主循环（只对μ连续化）
    for t = 1:mu_steps
        mu_current = mu_values(t);
        
        % 设置当前子问题的opts
        opts_t = struct();
        
        % 计算当前δ：保持δ/μ=1/1000的比例
        delta_final = delta_ratio * mu_current;
        opts_t.delta_final = delta_final;
        
        % 设置当前子问题的最大迭代次数
        opts_t.maxit = maxit_per_mu;
        
        % 设置当前子问题的收敛精度（随着μ减小而收紧）
        opts_t.tol = 10^(-2 - t/2);  % 梯度范数容忍度
        
        % 调用已有的Nesterov加速梯度法函数求解当前子问题
        [x, iter_t, out_t] = gl_FGD_fixed(x, A, b, mu_current, opts_t);
        
        % 累积迭代次数
        iter = iter + iter_t;
        
        % 合并输出信息
        if t == 1
            out.val = out_t.val;
            out.gradnorm = out_t.gradnorm;
        else
            out.val = [out.val; out_t.val];
            out.gradnorm = [out.gradnorm; out_t.gradnorm];
        end
        
        % 合并目标值历史记录
        out.fval_hist = [out.fval_hist, out_t.fval_hist];
        
        % 显示当前连续化步骤的信息
        fprintf('连续化步 %d/%d: μ=%.2e (δ=%.2e) → μ=%.2e, 子问题迭代 %d 次\n', ...
            t, mu_steps, mu_current, delta_final, mu_final, iter_t);
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
    title('Nesterov加速梯度下降收敛曲线');
    grid on;
    
    save_path = fullfile(save_dir, 'gl_FGD_primal_convergence.png');
    saveas(gcf, save_path);
    close(gcf);
end

function [x, iter, out] = gl_FGD_fixed(x0, A, b, mu, opts)
    %% 参数初始化
    if nargin < 5
        opts = struct();
    end
    
    % 从opts获取参数，或使用默认值
    if isfield(opts, 'maxit')
        maxit = opts.maxit;
    else
        maxit = 1000000;
    end
    
    if isfield(opts, 'tol')
        tol = opts.tol;
    else
        tol = 1e-6;
    end
    
    if isfield(opts, 'delta_final')
        delta_final = opts.delta_final;
    else
        delta_final = mu / 1000;  % 默认δ/μ=1/1000
    end
    
    % δ同伦参数
    if isfield(opts, 'homotopy_steps')
        homotopy_steps = opts.homotopy_steps;
    else
        homotopy_steps = 100;  % 默认δ同伦步数
    end
    
    %% 辅助函数：计算目标函数值（保持不变）
    function obj_val = compute_obj(x, delta_val)
        residual = A * x - b;
        f_val = 0.5 * norm(residual, 'fro')^2;
        
        group_norm_smooth = 0;
        for i = 1:n
            xi_norm = norm(x(i, :), 2);
            if xi_norm <= delta_val
                group_norm_smooth = group_norm_smooth + (xi_norm^2) / (2 * delta_val);
            else
                group_norm_smooth = group_norm_smooth + (xi_norm - delta_val/2);
            end
        end
        
        obj_val = f_val + mu * group_norm_smooth;
    end    
    
    %% 辅助函数：计算梯度（保持不变）
    function grad = compute_grad(x, delta_val)
        % 第一部分梯度
        grad_f = A' * (A * x - b);
        
        % 第二部分梯度
        grad_g = zeros(n, l);
        for i = 1:n
            xi_norm = norm(x(i, :), 2);
            if xi_norm <= delta_val
                grad_g(i, :) = (mu / delta_val) * x(i, :);
            else
                grad_g(i, :) = mu * x(i, :) / xi_norm;
            end
        end
        
        grad = grad_f + grad_g;
    end

    %% 初始化
    x = x0;
    [m, n] = size(A);
    l = size(x0, 2);
    
    % δ连续化设置
    delta_start = delta_final * 10;  % 从最终δ的10倍开始
    
    % 生成δ序列（从大到小）
    delta_values = linspace(delta_start, delta_final, homotopy_steps);
    
    % 为每个同伦步分配最大迭代次数
    maxit_per_step = ceil(maxit / homotopy_steps);

    % 存储输出信息
    out.val = zeros(maxit, 1);
    out.gradnorm = zeros(maxit, 1);
    iter = 0;

    % 用于绘图的目标值记录（每100次记录一次）
    out.fval_hist = [];
    
    % Nesterov加速法额外变量
    x_prev = x0;  % 存储前一次迭代的x

    %% δ同伦策略主循环
    for step = 1:homotopy_steps
        delta = delta_values(step);
        
        % 计算当前δ下的Lipschitz常数和步长
        normA2 = norm(A, 2)^2;
        L = normA2 + mu / delta;
        alpha = 1 / L;  % 固定步长
        
        % 当前同伦步迭代
        for k = 1:maxit_per_step
            iter = iter + 1;
            
            %% Nesterov加速梯度法步骤：
            % 1. 计算动量参数 β_k = (k-1)/(k+2)
            beta = (k - 1) / (k + 2);
            
            % 2. 计算y_k = x_k + β_k * (x_k - x_{k-1})
            y = x + beta * (x - x_prev);
            
            % 3. 在y点计算梯度
            grad_y = compute_grad(y, delta);
            
            % 4. 更新x: x_{k+1} = y_k - α * ∇f(y_k)
            x_new = y - alpha * grad_y;
            
            % 5. 保存旧点用于下一次迭代的动量计算
            x_prev = x;
            x = x_new;
            
            % 计算当前点的函数值和梯度（在x点）
            obj_val = compute_obj(x, delta);
            grad = compute_grad(x, delta);
            grad_norm = norm(grad, 'fro');
            
            % 存储输出信息
            out.val(iter) = obj_val;
            out.gradnorm(iter) = grad_norm;

            % 每100次记录一次目标值
            if mod(iter, 100) == 0
                out.fval_hist(end+1) = obj_val;
            end
            
            % 检查收敛条件（针对当前δ）
            if grad_norm < tol
                break;
            end
            
            % 如果达到总最大迭代次数，跳出所有循环
            if iter >= maxit
                break;
            end
        end
        
        % 如果达到总最大迭代次数，跳出所有循环
        if iter >= maxit
            break;
        end
    end
    
    %% 截断输出数组
    out.val = out.val(1:iter);
    out.gradnorm = out.gradnorm(1:iter);
    
    % 计算最终的目标函数值（原始非光滑形式，用于比较）
    residual = A * x - b;
    f_val_final = 0.5 * norm(residual, 'fro')^2;
    
    group_norm_final = 0;
    for i = 1:n
        group_norm_final = group_norm_final + norm(x(i, :), 2);
    end
    
    out.fval = f_val_final + mu * group_norm_final;
end