function [x, iter, out] = gl_cvx_gurobi(x0, A, b, mu, opts)
% GL_CVX_GUROBI 使用CVX调用Gurobi求解Group LASSO问题
%
% 输入输出同gl_cvx_mosek

% 获取维度
[n, l] = size(x0);
diary('gl_cvx_gurobi.txt');  % 开始记录输出
% 使用CVX建模
cvx_begin 
    cvx_solver gurobi  % 指定使用Gurobi求解器（唯一不同之处！）
    
    % 定义优化变量
    variable x_var(n, l)
    
    % 定义目标函数
    minimize(0.5 * square_pos(norm(A * x_var - b, 'fro')) + ...
             mu * sum(norms(x_var, 2, 2)))
cvx_end
diary off;
% 赋值输出
x = x_var;
output_text = fileread('gl_cvx_gurobi.txt');
    
iter = extract_gurobi_iterations(output_text);

% 构建输出结构体
out.fval = cvx_optval;
out.time = cvx_toc;
out.status = cvx_status;
out.iter = iter;

end

function iter = extract_gurobi_iterations(output_text)
    % 从Gurobi输出中提取迭代次数
    
    % 默认值
    iter = 0;
    
    % 空检查
    if isempty(output_text)
        return;
    end
    
    % 根据Gurobi输出格式进行匹配
    % 格式: "Barrier solved model in 15 iterations and 0.72 seconds"
    
    pattern = 'Barrier solved model in (\d+) iterations';
    tokens = regexp(output_text, pattern, 'tokens');
    
    if ~isempty(tokens)
        iter = str2double(tokens{1}{1});
        return;
    end
end