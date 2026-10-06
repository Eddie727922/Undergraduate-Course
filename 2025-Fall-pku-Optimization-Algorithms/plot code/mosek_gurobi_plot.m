% 数据
mosek_iter = 0:10;
mosek_pobj = [5.827106781e+00, 5.012966499e+00, 1.298018811e+00, 7.609547208e-01, ...
              5.687000581e-01, 5.388219864e-01, 5.383597456e-01, 5.383357846e-01, ...
              5.383291005e-01, 5.383271317e-01, 5.383269136e-01];

gurobi_iter = 0:14;
gurobi_pobj = [1.77561735e+01, 1.21492445e+01, 1.62793388e+00, 8.52861838e-01, ...
               6.27332469e-01, 5.54083295e-01, 5.44091623e-01, 5.41373640e-01, ...
               5.40174696e-01, 5.38654953e-01, 5.38389234e-01, 5.38363969e-01, ...
               5.38342120e-01, 5.38328557e-01, 5.38327056e-01];

% 绘图
figure;
semilogy(mosek_iter, mosek_pobj, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 8);
hold on;
semilogy(gurobi_iter, gurobi_pobj, 'r-s', 'LineWidth', 1.5, 'MarkerSize', 8);
hold off;

xlabel('迭代次数');
ylabel('目标函数值');
title('MOSEK vs Gurobi 收敛对比');
legend('MOSEK (11次迭代)', 'Gurobi (15次迭代)', 'Location', 'best');
grid on;

% 保存
saveas(gcf, 'solver_comparison.png');