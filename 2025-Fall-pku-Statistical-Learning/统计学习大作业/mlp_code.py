import argparse
import numpy as np
from sklearn.preprocessing import StandardScaler
from sklearn.neural_network import MLPClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
import joblib
from scipy.ndimage import rotate, shift, zoom
import random
from sklearn.pipeline import Pipeline
import matplotlib.pyplot as plt
import seaborn as sns
from tqdm import tqdm
import warnings

warnings.filterwarnings('ignore')


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


def plot_confusion_matrix(y_true, y_pred, class_names=None, save_path='confusion_matrix.png'):

    # 计算混淆矩阵
    cm = confusion_matrix(y_true, y_pred)

    # 如果没有提供类别名称，则使用数字
    if class_names is None:
        class_names = [str(i) for i in range(cm.shape[0])]

    # 绘制混淆矩阵
    plt.figure(figsize=(10, 8))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues',
                xticklabels=class_names, yticklabels=class_names)

    plt.title('Confusion Matrix')
    plt.ylabel('True Label')
    plt.xlabel('Predicted Label')
    plt.tight_layout()

    # 保存图像
    plt.savefig(save_path, dpi=300, bbox_inches='tight')
    print(f"Confusion matrix saved to {save_path}")

    # 显示图像
    plt.show()


def mlp(with_progress_bar=True):
    mlp_classifier = MLPClassifier(
            hidden_layer_sizes=(512, 256, 128),  # 更深的网络
            activation='relu',
            solver='adam',
            alpha=0.0001,
            batch_size=64,
            learning_rate='adaptive',
            learning_rate_init=0.001,
            max_iter=20,
            early_stopping=True,
            validation_fraction=0.1,
            n_iter_no_change=5,
            random_state=42,
            verbose=True
        )

    pipeline = Pipeline([
        ('scaler', StandardScaler()),
        ('mlp', mlp_classifier)
    ])
    return pipeline


def main():
    parser = argparse.ArgumentParser(description='Improved MLP on Kuzushiji-MNIST')
    parser.add_argument('--model-type', choices=['mlp', 'ensemble', 'voting', 'xgboost'],
                        default='mlp', help='Model type to use')
    parser.add_argument('--hidden-layers', default='512,256,128')
    parser.add_argument('--max-iter', type=int, default=2000)
    parser.add_argument('--early-stopping', action='store_true', default=True)
    parser.add_argument('--data-augmentation', action='store_true', default=True)
    parser.add_argument('--ensemble-n-estimators', type=int, default=10)
    parser.add_argument('--show-progress', action='store_true', default=True,
                        help='Show progress bar during training')
    parser.add_argument('--save-confusion-matrix', action='store_true', default=True,
                        help='Save confusion matrix plot')
    parser.add_argument('--confusion-matrix-path', type=str, default='confusion_matrix.png',
                        help='Path to save confusion matrix')
    args = parser.parse_args()

    # 加载数据
    print("Loading data...")
    X_train = np.load('kmnist-train-imgs.npz')['arr_0']
    X_test = np.load('kmnist-test-imgs.npz')['arr_0']
    y_train = np.load('kmnist-train-labels.npz')['arr_0']
    y_test = np.load('kmnist-test-labels.npz')['arr_0']

    # 数据预处理
    X_train = X_train.reshape((X_train.shape[0], -1))
    X_test = X_test.reshape((X_test.shape[0], -1))

    # 可选数据增强
    if args.data_augmentation:
        print("Applying data augmentation...")
        X_train, y_train = augment_dataset(X_train, y_train)

    # 创建模型
    print(f"Creating {args.model_type} model...")
    model = mlp(with_progress_bar=args.show_progress)

    # 训练
    print(f"Training {args.model_type} model...")
    model.fit(X_train, y_train.ravel())

    # 评估
    print("Evaluating model...")
    y_pred = model.predict(X_test)
    acc = accuracy_score(y_test, y_pred)
    print(f'Accuracy: {acc:.4f}')
    print('\nClassification report:')
    print(classification_report(y_test, y_pred, digits=4))

    # 绘制混淆矩阵
    if args.save_confusion_matrix:
        print("\nGenerating confusion matrix...")
        # KMNIST类别标签（假设是0-9）
        class_names = [f'Class {i}' for i in range(10)]
        plot_confusion_matrix(y_test, y_pred, class_names, args.confusion_matrix_path)

    # 保存模型
    print("\nSaving model...")
    joblib.dump(model, 'improved_model.pkl')
    print("Model saved to improved_model.pkl")

    return model


if __name__ == '__main__':
    main()