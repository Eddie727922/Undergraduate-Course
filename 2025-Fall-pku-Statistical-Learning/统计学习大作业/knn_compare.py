import matplotlib.pyplot as plt
import numpy as np

# 数据
k_values = [1, 2, 3, 4, 5, 6, 7, 8]
augmented_knn = [0.9277, 0.9277, 0.9263, 0.9266, 0.9245, 0.9238, 0.9211, 0.9205]
simple_knn = [0.9225, 0.9225, 0.9191, 0.9210, 0.9172, 0.9150, 0.9113, 0.9106]

# 创建图形
plt.figure(figsize=(10, 6))

# 绘制折线
plt.plot(k_values, simple_knn, 'o-', linewidth=2, markersize=8, label='Simple KNN', color='blue')
plt.plot(k_values, augmented_knn, 's-', linewidth=2, markersize=8, label='KNN with Data Augmentation', color='red')

# 设置标题和标签
plt.title('KNN Test Accuracy Comparison (KMNIST Dataset)', fontsize=14, fontweight='bold')
plt.xlabel('k (Number of Neighbors)', fontsize=12)
plt.ylabel('Test Accuracy', fontsize=12)

# 设置网格和图例
plt.grid(True, alpha=0.3)
plt.legend(fontsize=11)

# 设置y轴范围
plt.ylim(0.91, 0.93)

# 添加数值标签
for i, (x, y1, y2) in enumerate(zip(k_values, simple_knn, augmented_knn)):
    plt.text(x, y1+0.0003, f'{y1:.4f}', ha='center', fontsize=9, color='blue')
    plt.text(x, y2-0.0005, f'{y2:.4f}', ha='center', fontsize=9, color='red')

plt.tight_layout()
plt.savefig('knn_comparison_simple.png', dpi=300)
plt.show()