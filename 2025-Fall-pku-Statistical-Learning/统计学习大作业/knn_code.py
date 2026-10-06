from sklearn.neighbors import KNeighborsClassifier
import numpy as np
import matplotlib.pyplot as plt
import random
from tqdm import tqdm
from scipy.ndimage import rotate, shift
import os
from sklearn.metrics import f1_score, confusion_matrix, ConfusionMatrixDisplay  # 新增导入

def augment_image(image, label):
    augmented_images = [image.reshape(28, 28)]
    augmented_labels = [label]

    # 旋转
    if random.random() > 0.5:
        angle = random.uniform(-10, 10)
        rotated = rotate(image.reshape(28, 28), angle, reshape=False, mode='reflect')
        augmented_images.append(rotated)
        augmented_labels.append(label)

    # 平移
    if random.random() > 0.5:
        shift_x = random.uniform(-2, 2)
        shift_y = random.uniform(-2, 2)
        shifted = shift(image.reshape(28, 28), [shift_y, shift_x], mode='reflect')
        augmented_images.append(shifted)
        augmented_labels.append(label)

    return augmented_images, augmented_labels


def augment_dataset(X, y, factor=2):
    X_augmented = []
    y_augmented = []

    print("Augmenting dataset...")
    for i in tqdm(range(len(X)), desc="Augmentation"):
        base_img = X[i]
        images, labels = augment_image(base_img, y[i])
        X_augmented.extend([img.flatten() for img in images])
        y_augmented.extend(labels)

    return np.array(X_augmented), np.array(y_augmented)

def load(f):
    return np.load(f)['arr_0']


# Load the data
x_train = load('./NumPy_data_format/kmnist-train-imgs.npz')
x_test = load('./NumPy_data_format/kmnist-test-imgs.npz')
y_train = load('./NumPy_data_format/kmnist-train-labels.npz')
y_test = load('./NumPy_data_format/kmnist-test-labels.npz')

# Flatten images
x_train = x_train.reshape(-1, 784)
x_test = x_test.reshape(-1, 784)

x_train, y_train = augment_dataset(x_train, y_train)

# 创建保存图片的目录
os.makedirs('./report/figures', exist_ok=True)

# 测试不同的k值
k_values = range(1, 9)
test_errors = []
test_accuracies = []
f1_scores = []  # 新增：存储F1 Score
best_predictions = None  # 新增：存储最佳k值的预测结果
best_k = None  # 新增：存储最佳k值

for k in k_values:
    print(f'Training KNN with k={k}')

    # 创建并训练模型
    clf = KNeighborsClassifier(n_neighbors=k, weights='distance', n_jobs=-1)
    clf.fit(x_train, y_train)

    # 计算测试准确率
    test_score = clf.score(x_test, y_test)
    test_accuracies.append(test_score)

    # 计算测试误差
    test_error = 1 - test_score
    test_errors.append(test_error)
    
    # 新增：计算F1 Score
    y_pred = clf.predict(x_test)
    f1 = f1_score(y_test, y_pred, average='macro')
    f1_scores.append(f1)
    
    # 新增：保存最佳k值的预测结果
    if best_k is None or test_error < min(test_errors):
        best_k = k
        best_predictions = y_pred

    print(f'  k={k}: Test accuracy = {test_score:.4f}, Test error = {test_error:.4f}, F1 Score = {f1:.4f}')

# 绘制测试误差折线图
plt.figure(figsize=(10, 6))
plt.plot(k_values, test_errors, marker='o', linestyle='-', linewidth=2, markersize=8)
plt.title('KNN Test Error vs. k Value (KMNIST Dataset)', fontsize=14)
plt.xlabel('k (Number of Neighbors)', fontsize=12)
plt.ylabel('Test Error', fontsize=12)
plt.grid(True, alpha=0.3)
plt.xticks(k_values)

plt.tight_layout()
plt.savefig('./report/figures/knn_test_error_plot.png', dpi=150)
plt.show()

# 绘制测试准确率折线图
plt.figure(figsize=(10, 6))
plt.plot(k_values, test_accuracies, marker='s', linestyle='--', linewidth=2,
         markersize=8, color='green', alpha=0.8)
plt.title('KNN Test Accuracy vs. k Value (KMNIST Dataset)', fontsize=14)
plt.xlabel('k (Number of Neighbors)', fontsize=12)
plt.ylabel('Test Accuracy', fontsize=12)
plt.grid(True, alpha=0.3)
plt.xticks(k_values)

# 在每个点上添加数值标签
for i, (k, acc) in enumerate(zip(k_values, test_accuracies)):
    plt.annotate(f'{acc:.4f}', (k, acc), textcoords="offset points",
                 xytext=(0, 10), ha='center', fontsize=9)

plt.tight_layout()
plt.savefig('./report/figures/knn_test_accuracy_plot.png', dpi=150)
plt.show()

# 新增：绘制F1 Score折线图
plt.figure(figsize=(10, 6))
plt.plot(k_values, f1_scores, marker='D', linestyle='-', linewidth=2,
         markersize=8, color='orange', alpha=0.8)
plt.title('KNN F1 Score vs. k Value (KMNIST Dataset)', fontsize=14)
plt.xlabel('k (Number of Neighbors)', fontsize=12)
plt.ylabel('F1 Score', fontsize=12)
plt.grid(True, alpha=0.3)
plt.xticks(k_values)

# 在每个点上添加数值标签
for i, (k, f1) in enumerate(zip(k_values, f1_scores)):
    plt.annotate(f'{f1:.4f}', (k, f1), textcoords="offset points",
                 xytext=(0, 10), ha='center', fontsize=9)

plt.tight_layout()
plt.savefig('./report/figures/knn_f1_score_plot.png', dpi=150)
plt.show()

# 新增：绘制最佳k值的混淆矩阵
plt.figure(figsize=(12, 10))
cm = confusion_matrix(y_test, best_predictions)
disp = ConfusionMatrixDisplay(confusion_matrix=cm)
disp.plot(cmap=plt.cm.Blues, values_format='d')
plt.title(f'Confusion Matrix for KNN (k={best_k})', fontsize=14, pad=20)
plt.xlabel('Predicted Label', fontsize=12)
plt.ylabel('True Label', fontsize=12)

plt.tight_layout()
plt.savefig('./report/figures/knn_confusion_matrix_best_k.png', dpi=150)
plt.show()

# 找出最佳k值
best_idx = np.argmin(test_errors)
best_k = k_values[best_idx]
best_accuracy = test_accuracies[best_idx]
best_error = test_errors[best_idx]
best_f1 = f1_scores[best_idx]  # 新增：最佳F1 Score

print(f"\nBest k value: {best_k}")
print(f"Best accuracy: {best_accuracy:.4f}")
print(f"Lowest error: {best_error:.4f}")
print(f"Best F1 Score: {best_f1:.4f}")