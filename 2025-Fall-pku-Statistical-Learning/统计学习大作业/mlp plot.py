import matplotlib.pyplot as plt
import numpy as np

# 从你的输出中提取的数据
iterations = list(range(1, 21))
loss_values = [
    0.28907409, 0.14024463, 0.09835275, 0.07851685, 0.06723019,
    0.05807178, 0.05598388, 0.04915532, 0.04664162, 0.04474758,
    0.04610366, 0.03856061, 0.04087875, 0.04039179, 0.04150935,
    0.03579653, 0.04040843, 0.03910174, 0.03728033, 0.04063263
]
validation_scores = [
    0.939780, 0.955439, 0.957271, 0.964268, 0.963685,
    0.965684, 0.962852, 0.964185, 0.965434, 0.966267,
    0.966350, 0.969682, 0.971098, 0.972430, 0.972014,
    0.967683, 0.967600, 0.970265, 0.972347, 0.970431
]

# 创建图形
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(12, 10))

# 绘制损失曲线
ax1.plot(iterations, loss_values, 'b-o', linewidth=2, markersize=8, label='Training Loss')
ax1.set_xlabel('Iteration', fontsize=12)
ax1.set_ylabel('Loss', fontsize=12)
ax1.set_title('Training Loss vs Iteration', fontsize=14, fontweight='bold')
ax1.grid(True, alpha=0.3)
ax1.legend(fontsize=12)

# 在损失曲线上标注最小损失点
min_loss_idx = np.argmin(loss_values)
min_loss_iter = iterations[min_loss_idx]
min_loss_val = loss_values[min_loss_idx]
ax1.plot(min_loss_iter, min_loss_val, 'ro', markersize=12, label=f'Min Loss: {min_loss_val:.4f}')
ax1.annotate(f'Min: {min_loss_val:.4f}',
             xy=(min_loss_iter, min_loss_val),
             xytext=(min_loss_iter+0.5, min_loss_val+0.01),
             arrowprops=dict(arrowstyle='->', color='red'),
             fontsize=10, color='red')
ax1.legend(fontsize=12)

# 绘制验证分数曲线
ax2.plot(iterations, validation_scores, 'g-s', linewidth=2, markersize=8, label='Validation Score')
ax2.set_xlabel('Iteration', fontsize=12)
ax2.set_ylabel('Validation Score', fontsize=12)
ax2.set_title('Validation Score vs Iteration', fontsize=14, fontweight='bold')
ax2.grid(True, alpha=0.3)

# 在验证分数曲线上标注最大分数点
max_score_idx = np.argmax(validation_scores)
max_score_iter = iterations[max_score_idx]
max_score_val = validation_scores[max_score_idx]
ax2.plot(max_score_iter, max_score_val, 'ro', markersize=12, label=f'Max Score: {max_score_val:.4f}')
ax2.annotate(f'Max: {max_score_val:.4f}',
             xy=(max_score_iter, max_score_val),
             xytext=(max_score_iter-3, max_score_val-0.005),
             arrowprops=dict(arrowstyle='->', color='red'),
             fontsize=10, color='red')
ax2.legend(fontsize=12)

# 设置x轴刻度
for ax in [ax1, ax2]:
    ax.set_xticks(iterations)
    ax.set_xticklabels([str(i) for i in iterations], rotation=45)

# 调整布局
plt.tight_layout()

# 保存图形
plt.savefig('training_progress.png', dpi=300, bbox_inches='tight')
print("图形已保存为 'training_progress.png'")

# 显示图形
plt.show()

# 创建第二个图形：合并在一张图中
fig2, ax = plt.subplots(figsize=(12, 8))

# 绘制双Y轴图形
color1 = 'tab:blue'
color2 = 'tab:green'

ax1_combined = ax
ax1_combined.set_xlabel('Iteration', fontsize=12)
ax1_combined.set_ylabel('Loss', color=color1, fontsize=12)
line1 = ax1_combined.plot(iterations, loss_values, color=color1, linewidth=3, marker='o', markersize=8, label='Loss')
ax1_combined.tick_params(axis='y', labelcolor=color1)
ax1_combined.set_xticks(iterations)
ax1_combined.set_xticklabels([str(i) for i in iterations], rotation=45)

# 创建第二个Y轴
ax2_combined = ax1_combined.twinx()
ax2_combined.set_ylabel('Validation Score', color=color2, fontsize=12)
line2 = ax2_combined.plot(iterations, validation_scores, color=color2, linewidth=3, marker='s', markersize=8, label='Validation Score')
ax2_combined.tick_params(axis='y', labelcolor=color2)

# 添加标题和图例
plt.title('Training Progress: Loss and Validation Score', fontsize=16, fontweight='bold')

# 合并图例
lines = line1 + line2
labels = [l.get_label() for l in lines]
ax1_combined.legend(lines, labels, loc='upper right', fontsize=12)

# 添加网格
ax1_combined.grid(True, alpha=0.3)

# 标记关键点
# 最小损失点
ax1_combined.plot(min_loss_iter, min_loss_val, 'ro', markersize=12, label=f'Min Loss')
ax1_combined.annotate(f'Min Loss\n{min_loss_val:.4f}',
                     xy=(min_loss_iter, min_loss_val),
                     xytext=(min_loss_iter-2, min_loss_val+0.02),
                     arrowprops=dict(arrowstyle='->', color='red'),
                     fontsize=10, color='red')

# 最大验证分数点
ax2_combined.plot(max_score_iter, max_score_val, 'mo', markersize=12, label=f'Max Score')
ax2_combined.annotate(f'Max Score\n{max_score_val:.4f}',
                     xy=(max_score_iter, max_score_val),
                     xytext=(max_score_iter+1, max_score_val-0.01),
                     arrowprops=dict(arrowstyle='->', color='m'),
                     fontsize=10, color='m')

plt.tight_layout()

plt.savefig('MLP training_progress.png', dpi=300, bbox_inches='tight')

plt.show()

