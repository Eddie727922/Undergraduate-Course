function [x, iter, out] = gl_cvx_mosek(x0, A, b, mu, opts)
% 输入输出同gl_cvx_mosek

% 获取维度
[n, l] = size(x0);
diary('gl_cvx_mosek.txt');  % 开始记录输出
% 使用CVX建模
cvx_begin 
    cvx_solver mosek  % 指定使用mosek求解器（唯一不同之处！）
    
    % 定义优化变量
    variable x_var(n, l)
    
    % 定义目标函数
    minimize(0.5 * square_pos(norm(A * x_var - b, 'fro')) + ...
             mu * sum(norms(x_var, 2, 2)))
cvx_end
diary off;
% 赋值输出
x = x_var;
output_text = fileread('gl_cvx_mosek.txt');
    
iter = extract_mosek_iterations(output_text);

% 构建输出结构体
out.fval = cvx_optval;
out.time = cvx_toc;
out.status = cvx_status;
out.iter = iter;

end

function iter = extract_mosek_iterations(output_text)
    % 从mosek输出中提取迭代次数
    
    % 默认值
    iter = 0;
    
    % 空检查
    if isempty(output_text)
        return;
    end
    
    pattern1 = 'Interior-point\s+-\s+iterations\s*:\s*(\d+)';
    tokens1 = regexp(output_text, pattern1, 'tokens');
    
    if ~isempty(tokens1)
        iter = str2double(tokens1{1}{1});
        return;
    end
end




