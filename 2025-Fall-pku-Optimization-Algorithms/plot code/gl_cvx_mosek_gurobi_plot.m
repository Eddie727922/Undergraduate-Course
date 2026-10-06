%% 绘制MOSEK和Gurobi求解过程对比图

% MOSEK数据（来自之前的日志）
mosek_iter = 0:11;
mosek_pobj = [5.620000000e+00, 4.673116699e+00, 1.467687956e+00, 5.894065656e-01, ...
              5.594788428e-01, 5.474317272e-01, 5.385249002e-01, 5.383895203e-01, ...
              5.383365606e-01, 5.383284540e-01, 5.383270845e-01, 5.383269907e-01];

% Gurobi数据（来自你提供的日志）
gurobi_iter = 0:15;
gurobi_pobj = [1.77561995e+01, 1.36444349e+01, 1.78223396e+00, 9.01359233e-01, ...
               6.55700360e-01, 5.47920543e-01, 5.41754358e-01, 5.39202846e-01, ...
               5.38509453e-01, 5.38471318e-01, 5.38349574e-01, 5.38338335e-01, ...
               5.38330304e-01, 5.38327352e-01, 5.38326899e-01, 5.38326879e-01];

% 创建对比图
figure('Position', [100, 100, 600, 700]);

plot(mosek_iter, mosek_pobj, 'b-o', 'LineWidth', 2, 'MarkerSize', 8, ...
     'MarkerFaceColor', 'b', 'DisplayName', 'MOSEK');
hold on;
plot(gurobi_iter, gurobi_pobj, 'r-s', 'LineWidth', 2, 'MarkerSize', 8, ...
     'MarkerFaceColor', 'r', 'DisplayName', 'Gurobi');
hold off;

xlabel('迭代次数', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('原始目标函数值 (POBJ)', 'FontSize', 12, 'FontWeight', 'bold');
title('MOSEK vs Gurobi 收敛过程对比 (线性坐标)', 'FontSize', 14, 'FontWeight', 'bold');
legend('Location', 'best', 'FontSize', 11);
grid on;
set(gca, 'FontSize', 11, 'GridAlpha', 0.3);

% 添加最终值标签
mosek_final = mosek_pobj(end);
gurobi_final = gurobi_pobj(end);
text(0.02, 0.98, sprintf('MOSEK最终值: %.6f', mosek_final), ...
     'Units', 'normalized', 'FontSize', 10, 'VerticalAlignment', 'top', ...
     'BackgroundColor', 'w', 'EdgeColor', 'b');
text(0.02, 0.88, sprintf('Gurobi最终值: %.6f', gurobi_final), ...
     'Units', 'normalized', 'FontSize', 10, 'VerticalAlignment', 'top', ...
     'BackgroundColor', 'w', 'EdgeColor', 'r');