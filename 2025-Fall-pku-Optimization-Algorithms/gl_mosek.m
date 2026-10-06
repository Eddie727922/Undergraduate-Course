function [x, iter, out] = gl_mosek(x0, A, b, mu, opts)
    
    clear prob;
    [~,solution]=mosekopt('symbcon');

    [m, n] = size(A);
    [~, l] = size(b);
    
    % 约束下界设为 b
    prob.blc = zeros(m * l, 1);

    % xi ：解
    % si ：残差
    % ti 每行 xi 的 L2 范数的上界
    % u,v 辅助变量
    prob.c = [zeros((n + m) * l, 1); % xi,si = 0
            mu * ones(n, 1);         % ti = μ
            1;                       % u = 1
            0];                      % v = 0

    Mar = (n + m) * l + n + 2;
    prob.a = zeros(m * l, Mar);
    
    % A xi - si = bi
    for k = 1:l
        prob.blc((k - 1) * m + 1:k * m) = b(:, k);
        prob.a((k - 1) * m + 1:k * m, n * (k - 1) + 1:n * k) = A;
        prob.a((k - 1) * m + 1:k * m, m * (k - 1) + 1 + n * l:k * m + n * l) = -eye(m);
    end
    
    % 二阶锥约束
    % n 个旋转二次锥和 1 个常规二次锥
    prob.cones.type = [solution.symbcon.MSK_CT_QUAD * ones(1, n), solution.symbcon.MSK_CT_RQUAD];
    prob.cones.sub = [];
    prob.cones.subptr = 1;
    prob.buc = prob.blc;
    
    %设置上下界
    %  xi 和 si 无下界
    prob.blx = [-inf * ones((n + m) * l, 1); zeros(n + 2, 1)];
    % ti, u, v 的下界为 0
    prob.blx(Mar) = 1;
    % 无上界
    prob.bux = inf * ones(Mar, 1);
    % v = 1
    prob.bux(Mar) = 1;
    
    % 旋转二次锥约束
    for k = 1:n
        prob.cones.sub = [prob.cones.sub, (n + m) * l + k];
        for i = 1:l
            prob.cones.sub = [prob.cones.sub, (i - 1) * n + k];
        end
        prob.cones.subptr = [prob.cones.subptr, 1 + k * (l + 1)];
    end
    
    % 残差约束
    prob.cones.sub = [prob.cones.sub, Mar - 1, Mar, (1 + l * n):l * (m + n)];
    
    diary('gl_mosek.txt');  % 开始记录输出
    [~, solution] = mosekopt('minimize', prob);
    diary off;

    x = zeros(n, l);
    for i = 1:l
        x(:, i) = solution.sol.itr.xx((i - 1) * n + (1:n));
    end
    
    out = struct('fval', solution.sol.itr.pobjval);
    output_text = fileread('gl_cvx_mosek.txt');
    
    iter = extract_iterations_from_output(output_text);

end

function iter = extract_iterations_from_output(output_text)
    % 从输出文本中提取迭代次数
    % 精确匹配内点法迭代次数（根据diary的格式）
    % 匹配模式: "Interior-point          - iterations : 11"
    pattern = 'Interior-point\s*-\s*iterations\s*:\s*(\d+)';
    tokens = regexp(output_text, pattern, 'tokens');
    
    if ~isempty(tokens)
        iter = str2double(tokens{1}{1});
        return;
    end
end