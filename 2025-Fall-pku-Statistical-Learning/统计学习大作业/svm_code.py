import argparse
import os
import numpy as np
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline
from sklearn.svm import SVC, LinearSVC
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
import joblib
import matplotlib.pyplot as plt
import seaborn as sns
import random
from tqdm import tqdm
from scipy.ndimage import rotate, shift

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

def load_first_array(npz_path):
    if not os.path.exists(npz_path):
        raise FileNotFoundError(f"File not found: {npz_path}")
    with np.load(npz_path, allow_pickle=True) as data:
        if hasattr(data, 'files') and len(data.files) > 0:
            return data[data.files[0]]
        return data


def prepare_features(X):
    X = np.asarray(X)
    if X.ndim > 2:
        return X.reshape((X.shape[0], -1))
    return X


def build_pipeline(pca_components, svm_type, C, kernel, random_state):
    steps = []
    # scaling before PCA/SVM
    steps.append(('scaler', StandardScaler()))
    if pca_components is not None and pca_components > 0:
        steps.append(('pca', PCA(n_components=pca_components, random_state=random_state)))

    if svm_type == 'linear':
        clf = LinearSVC(C=C, random_state=random_state, max_iter=10000)
    else:
        clf = SVC(C=C, kernel=kernel, probability=False, random_state=random_state)

    steps.append(('clf', clf))
    return Pipeline(steps)


def plot_accuracy_vs_c(c_values, accuracies, best_c, best_acc, pca_component):
    """绘制C值vs准确率曲线"""
    plt.figure(figsize=(10, 6))
    plt.plot(c_values, accuracies, 'b-o', linewidth=2, markersize=8)
    plt.plot(best_c, best_acc, 'r*', markersize=15, label=f'Best C={best_c}, Acc={best_acc:.4f}')
    plt.xlabel('C Value', fontsize=12)
    plt.ylabel('Test Accuracy', fontsize=12)
    plt.title(f'SVM Test Accuracy vs C Value (Kuzushiji-MNIST, PCA={pca_component})', fontsize=14)
    plt.grid(True, alpha=0.3)
    plt.legend()
    plt.xticks(c_values, rotation=45)
    plt.tight_layout()
    plt.savefig(f'./report/figures/svm_c_accuracy_curve_pca_{pca_component}.png', dpi=150)
    plt.close()
    print(f"Accuracy vs C plot saved as './report/figures/svm_c_accuracy_curve_pca_{pca_component}.png'")


def plot_confusion_matrix(y_true, y_pred, best_c, best_acc, best_pca, class_names=None):
    """绘制混淆矩阵"""
    if class_names is None:
        class_names = [str(i) for i in range(10)]

    cm = confusion_matrix(y_true, y_pred)

    plt.figure(figsize=(10, 8))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues',
                xticklabels=class_names, yticklabels=class_names)
    plt.title(f'Confusion Matrix (C={best_c}, PCA={best_pca}, Accuracy={best_acc:.4f})', fontsize=14)
    plt.xlabel('Predicted Label', fontsize=12)
    plt.ylabel('True Label', fontsize=12)
    plt.tight_layout()
    plt.savefig(f'./report/figures/svm_confusion_matrix_c_{best_c}_pca_{best_pca}.png', dpi=150)
    plt.close()
    print(f"Confusion matrix saved as './report/figures/svm_confusion_matrix_c_{best_c}_pca_{best_pca}.png'")


def tune_c_parameter(X_train, y_train, X_test, y_test, svm_type, kernel, pca_components, random_state, c_values):
    """调优C参数并返回结果"""
    accuracies = []

    print(f"Testing {len(c_values)} C values with PCA={pca_components}...")

    best_acc = 0
    best_c = None
    best_pipeline = None
    best_predictions = None

    for C_val in tqdm(c_values, desc=f"PCA={pca_components}"):
        # 构建管道
        pca_to_use = pca_components if pca_components > 0 else None
        pipeline = build_pipeline(pca_to_use, svm_type, C_val, kernel, random_state)

        # 训练
        pipeline.fit(X_train, y_train)

        # 评估
        y_pred = pipeline.predict(X_test)
        acc = accuracy_score(y_test, y_pred)
        accuracies.append(acc)

        # 更新最佳结果
        if acc > best_acc:
            best_acc = acc
            best_c = C_val
            best_pipeline = pipeline
            best_predictions = y_pred

    return c_values, accuracies, best_c, best_acc, best_pipeline, best_predictions


def plot_multi_pca_results(all_results, c_values):
    """绘制多个PCA组件数的C值vs准确率曲线"""
    plt.figure(figsize=(12, 8))
    
    for pca_comp, (_, accuracies, best_c, best_acc, _, _) in all_results.items():
        plt.plot(c_values, accuracies, '-o', linewidth=2, markersize=6, 
                label=f'PCA={pca_comp} (Best C={best_c}, Acc={best_acc:.4f})')
    
    plt.xlabel('C Value', fontsize=14)
    plt.ylabel('Test Accuracy', fontsize=14)
    plt.title('SVM Test Accuracy vs C Value for Different PCA Components (Kuzushiji-MNIST)', fontsize=16)
    plt.grid(True, alpha=0.3)
    plt.legend(loc='best', fontsize=10)
    plt.xticks(c_values, rotation=45)
    plt.tight_layout()
    
    # 确保目录存在
    os.makedirs('./report/figures', exist_ok=True)
    plt.savefig('./report/figures/svm_multi_pca_accuracy_curves.png', dpi=150)
    plt.close()
    print(f"Multi-PCA accuracy curves saved as './report/figures/svm_multi_pca_accuracy_curves.png'")


def print_class_accuracy_report(y_true, y_pred, class_names=None):
    """输出每个类别的准确率"""
    if class_names is None:
        class_names = [str(i) for i in range(10)]
    
    # 计算每个类别的准确率
    cm = confusion_matrix(y_true, y_pred)
    class_accuracies = []
    
    for i in range(len(class_names)):
        correct = cm[i, i]
        total = np.sum(cm[i, :])
        accuracy = correct / total if total > 0 else 0
        class_accuracies.append((class_names[i], accuracy))
    
    print("\n" + "="*60)
    print("CLASS-WISE ACCURACY REPORT")
    print("="*60)
    
    for class_name, acc in class_accuracies:
        print(f"Class {class_name}: Accuracy = {acc:.4f}")
    
    # 计算平均准确率（不是加权平均，而是各类别准确率的平均值）
    mean_class_accuracy = np.mean([acc for _, acc in class_accuracies])
    print("-"*60)
    print(f"Mean Class Accuracy: {mean_class_accuracy:.4f}")
    print("="*60)
    
    return class_accuracies


def main():
    parser = argparse.ArgumentParser(description='PCA + SVM on Kuzushiji-MNIST NumPy files')
    parser.add_argument('--data-dir', default='NumPy_data_format', help='Directory with KMNIST .npz files')
    parser.add_argument('--svm-type', choices=['svc', 'linear'], default='svc', help='SVM type')
    parser.add_argument('--C', type=float, default=10.0, help='SVM regularization parameter')
    parser.add_argument('--kernel', default='rbf', help='Kernel for SVC (ignored for linear)')
    parser.add_argument('--random-state', type=int, default=42, help='Random seed')
    parser.add_argument('--out-model', default='svm_kmnist.pkl', help='Path to save trained pipeline')
    parser.add_argument('--tune_c', action='store_true', help='Tune C parameter from 1 to 20')
    parser.add_argument('--pca-components', type=int, default=50, help='Number of PCA components (0 to disable)')
    args = parser.parse_args()

    # 加载数据
    def load(f):
        return np.load(f)['arr_0']

    X_train = load('./NumPy_data_format/kmnist-train-imgs.npz')
    X_test = load('./NumPy_data_format/kmnist-test-imgs.npz')
    y_train = load('./NumPy_data_format/kmnist-train-labels.npz')
    y_test = load('./NumPy_data_format/kmnist-test-labels.npz')

    # 数据增强
    X_train, y_train = augment_dataset(X_train, y_train)

    # 准备特征
    X = prepare_features(X_train)
    y = np.asarray(y_train).ravel()

    X_train_used = X
    y_train_used = y
    X_test_used = prepare_features(X_test)
    y_test_used = np.asarray(y_test).ravel()

    # 定义要测试的PCA组件数和C值
    pca_components_list = [10, 20, 50, 100, 150, 200, 400, 500]
    c_values = [0.2, 0.5, 1, 2, 3, 5, 7, 9, 10, 11, 20, 25, 30, 35, 40, 50, 60, 80, 100]
    
    # 确保输出目录存在
    os.makedirs('./report/figures', exist_ok=True)
    
    # 存储所有结果
    all_results = {}
    best_overall_acc = 0
    best_overall_params = {}
    best_overall_pipeline = None
    best_overall_predictions = None
    
    print("="*70)
    print("Testing Multiple PCA Components and C Values")
    print("="*70)
    
    # 对每个PCA组件数进行实验
    for pca_comp in pca_components_list:
        # 检查PCA组件数是否超过特征数
        n_features = X_train_used.shape[1]
        if pca_comp > n_features:
            print(f"Skipping PCA={pca_comp} (exceeds feature count {n_features})")
            continue
            
        # 调优C参数
        c_vals, accuracies, best_c, best_acc, best_pipeline, best_preds = tune_c_parameter(
            X_train_used, y_train_used, X_test_used, y_test_used,
            args.svm_type, args.kernel, pca_comp, args.random_state, c_values
        )
        
        # 存储结果
        all_results[pca_comp] = (c_vals, accuracies, best_c, best_acc, best_pipeline, best_preds)
        
        # 更新全局最佳结果
        if best_acc > best_overall_acc:
            best_overall_acc = best_acc
            best_overall_params = {
                'pca': pca_comp,
                'C': best_c,
                'accuracy': best_acc
            }
            best_overall_pipeline = best_pipeline
            best_overall_predictions = best_preds
        
        # 为每个PCA组件数绘制单独的准确率vsC曲线
        plot_accuracy_vs_c(c_vals, accuracies, best_c, best_acc, pca_comp)
    
    # 绘制多PCA组件的综合曲线
    plot_multi_pca_results(all_results, c_values)
    
    # 输出全局最佳结果
    print("\n" + "="*70)
    print("BEST OVERALL RESULTS")
    print("="*70)
    print(f"Best PCA components: {best_overall_params['pca']}")
    print(f"Best C value: {best_overall_params['C']}")
    print(f"Best test accuracy: {best_overall_params['accuracy']:.4f}")
    print("="*70)
    
    # 输出每个类别的准确率
    print_class_accuracy_report(y_test_used, best_overall_predictions)
    
    # 在最佳参数下重新绘制混淆矩阵
    plot_confusion_matrix(
        y_test_used, best_overall_predictions, 
        best_overall_params['C'], best_overall_params['accuracy'],
        best_overall_params['pca']
    )
    
    # 保存最佳模型
    joblib.dump(best_overall_pipeline, args.out_model)
    print(f'\nBest model saved to: {args.out_model}')


if __name__ == '__main__':
    main()