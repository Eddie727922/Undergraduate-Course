function [x, iter, out] = gl_gurobi(x0, A, b, mu, opts)

    clear model;

    [m, n] = size(A);
    [~, l] = size(b);
    
    % 总变量数
    % xi ：解
    % si ：残差
    % ti 每行 xi 的 L2 范数的上界
    % u,v 辅助变量，v = 1
    M = (n + m) * l + n + 2;
    
    model.modelsense = 'min';
    
    model.A = zeros(l * m + 1, M);
    model.rhs = zeros(l * m + 1, 1);
    model.obj = [zeros((n + m) * l, 1); % xi,si = 0
                ones(n, 1) * mu;        % ti = μ
                1;                      % u = 1
                0];                     % v = 0
    
    % A xi - si = bi 
    for k = 1:l
        model.A((k - 1) * m + 1:k * m, (k - 1) * n + 1:k * n) = A;
        model.A((k - 1) * m + 1:k * m, (k - 1) * m + 1 + n * l:k * m + n * l) = -eye(m);
        model.rhs((k - 1) * m + 1:k * m) = b(:, k);
    end
    
    % v = 1
    model.A(m * l + 1, M) = 1;
    model.A = sparse(model.A);
    model.rhs(m * l + 1) = 1;
    model.sense = '='; % 所有约束都是等式约束

    model.lb = [-inf * ones((n + m) * l, 1);  % xi 和 si 无下界
                zeros(n + 2, 1)];             % ti, u, v 的下界为 0

    loc = 0:n:n * l - 1;
    
    % 旋转二次锥约束：t_i² ≥ \sum_{j=1}^l x_(i,j)²
    for k = 1:n
        model.quadcon(k).Qrow = [k + loc, n * l + m * l + k];
        model.quadcon(k).Qcol = [k + loc, n * l + m * l + k];
        model.quadcon(k).Qval = [1, 1, -1];
        model.quadcon(k).q = sparse(zeros(M, 1));
        model.quadcon(k).rhs = 0;
        model.quadcon(k).name = 'std_cone';
    end
    
    % 残差约束：\sum_{i=1}^{m*l} s_i² - uv ≤ 0
    loc = n * l + (1:m * l);
    model.quadcon(n + 1).Qval = [ones(1, m * l), -2];
    model.quadcon(n + 1).q = sparse(zeros(M, 1));
    model.quadcon(n + 1).rhs = 0;
    model.quadcon(n + 1).name = 'rot_cone';
    model.quadcon(n + 1).Qrow = [loc, M - 1];
    model.quadcon(n + 1).Qcol = [loc, M];
    
    % 求解约束系统
    diary('gl_gurobi.txt');  % 开始记录输出
    solution = gurobi(model);
    diary off;

    x = zeros(n, l);
    for k = 0:(l - 1)
        x(:, k + 1) = solution.x(k * n + (1:n));
    end
    
    % 内点法迭代次数
    iter = solution.baritercount;
    out = struct('fval', solution.objval);
end