from __future__ import print_function
import keras
from keras.models import Sequential
from keras.layers import Dense, Dropout, Flatten, Conv2D, MaxPooling2D, BatchNormalization
from keras.regularizers import l2
from keras.callbacks import EarlyStopping, ReduceLROnPlateau
from keras import backend as K
import numpy as np
import matplotlib.pyplot as plt
import random
from tqdm import tqdm
from scipy.ndimage import rotate, shift

batch_size = 64
num_classes = 10
epochs = 20

img_rows, img_cols = 28, 28

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


# 加载数据
x_train = load('./NumPy_data_format/kmnist-train-imgs.npz')
x_test = load('./NumPy_data_format/kmnist-test-imgs.npz')
y_train = load('./NumPy_data_format/kmnist-train-labels.npz')
y_test = load('./NumPy_data_format/kmnist-test-labels.npz')

x_test_raw, y_test_raw = x_test.copy(), y_test.copy()

x_train, y_train = augment_dataset(x_train, y_train)

if K.image_data_format() == 'channels_first':
    x_train = x_train.reshape(x_train.shape[0], 1, img_rows, img_cols)
    x_test = x_test.reshape(x_test.shape[0], 1, img_rows, img_cols)
    input_shape = (1, img_rows, img_cols)
else:
    x_train = x_train.reshape(x_train.shape[0], img_rows, img_cols, 1)
    x_test = x_test.reshape(x_test.shape[0], img_rows, img_cols, 1)
    input_shape = (img_rows, img_cols, 1)

x_train = x_train.astype('float32')
x_test = x_test.astype('float32')
x_train /= 255
x_test /= 255
print('{} train samples, {} test samples'.format(len(x_train), len(x_test)))

# 转换为分类矩阵
y_train = keras.utils.to_categorical(y_train, num_classes)
y_test = keras.utils.to_categorical(y_test, num_classes)

# 改进的模型架构
model = Sequential()

# 第一卷积块
model.add(Conv2D(32, kernel_size=(3, 3), activation='relu',
                 padding='same', input_shape=input_shape))
model.add(BatchNormalization())
model.add(Conv2D(32, (3, 3), activation='relu', padding='same'))
model.add(BatchNormalization())
model.add(MaxPooling2D(pool_size=(2, 2)))
model.add(Dropout(0.25))

# 第二卷积块
model.add(Conv2D(64, (3, 3), activation='relu', padding='same'))
model.add(BatchNormalization())
model.add(Conv2D(64, (3, 3), activation='relu', padding='same'))
model.add(BatchNormalization())
model.add(MaxPooling2D(pool_size=(2, 2)))
model.add(Dropout(0.25))

# 第三卷积块
model.add(Conv2D(128, (3, 3), activation='relu', padding='same'))
model.add(BatchNormalization())
model.add(Conv2D(128, (3, 3), activation='relu', padding='same'))
model.add(BatchNormalization())
model.add(MaxPooling2D(pool_size=(2, 2)))
model.add(Dropout(0.25))

model.add(Flatten())

# 全连接层
model.add(Dense(256, activation='relu', kernel_regularizer=l2(0.001)))
model.add(BatchNormalization())
model.add(Dropout(0.5))

model.add(Dense(128, activation='relu', kernel_regularizer=l2(0.001)))
model.add(BatchNormalization())
model.add(Dropout(0.5))

model.add(Dense(num_classes, activation='softmax'))

# 优化器和回调函数
model.compile(loss='categorical_crossentropy',
              optimizer=keras.optimizers.Adam(learning_rate=0.001),
              metrics=['accuracy'])

# 显示模型摘要
model.summary()

# 回调函数
early_stopping = EarlyStopping(
    monitor='val_loss',
    patience=10,
    restore_best_weights=True,
    verbose=1
)

reduce_lr = ReduceLROnPlateau(
    monitor='val_loss',
    factor=0.5,
    patience=5,
    min_lr=0.00001,
    verbose=1
)

# validation
split_ratio = 0.1
split_index = int(len(x_train) * (1 - split_ratio))

x_train_final = x_train[:split_index]
y_train_final = y_train[:split_index]
x_val = x_train[split_index:]
y_val = y_train[split_index:]

# 训练模型
history = model.fit(
    x_train_final, y_train_final,
    batch_size=batch_size,
    epochs=epochs,
    validation_data=(x_val, y_val),
    callbacks=[early_stopping, reduce_lr],
    verbose=1
)

# ... 之前的代码保持不变 ...

# 最终评估
train_score = model.evaluate(x_train_final, y_train_final, verbose=0)
val_score = model.evaluate(x_val, y_val, verbose=0)
test_score = model.evaluate(x_test, y_test, verbose=0)

print('\n' + '=' * 50)
print('评估结果:')
print('=' * 50)
print('训练集 - 损失: {:.4f}, 准确率: {:.4f}'.format(train_score[0], train_score[1]))
print('验证集 - 损失: {:.4f}, 准确率: {:.4f}'.format(val_score[0], val_score[1]))
print('测试集 - 损失: {:.4f}, 准确率: {:.4f}'.format(test_score[0], test_score[1]))
print('=' * 50)

# 保存模型
model.save('kmnist_cnn_improved.h5')
print("模型已保存为 'kmnist_cnn_improved.h5'")

# 添加混淆矩阵绘制代码（从这里开始）
from sklearn.metrics import confusion_matrix
import seaborn as sns
import os
import matplotlib

# 确保输出目录存在
os.makedirs('./report/figures', exist_ok=True)

# 设置matplotlib使用英文标签
matplotlib.rcParams['font.sans-serif'] = ['Arial', 'DejaVu Sans']
matplotlib.rcParams['font.family'] = 'sans-serif'

# 获取测试集的预测结果
y_pred = model.predict(x_test)
y_pred_classes = np.argmax(y_pred, axis=1)
y_true_classes = np.argmax(y_test, axis=1)

# ================================
# 输出测试集中误分类的灰度图
# ================================

import pandas as pd
from collections import Counter
import math

# KMNIST 标签映射
label_kana = {
    0: 'お',
    1: 'き',
    2: 'す',
    3: 'つ',
    4: 'な',
    5: 'は',
    6: 'ま',
    7: 'や',
    8: 'れ',
    9: 'を'
}

label_romaji = {
    0: 'o',
    1: 'ki',
    2: 'su',
    3: 'tsu',
    4: 'na',
    5: 'ha',
    6: 'ma',
    7: 'ya',
    8: 're',
    9: 'wo'
}

# 输出目录
mis_dir = './report/misclassified'
individual_dir = os.path.join(mis_dir, 'individual')
pair_dir = os.path.join(mis_dir, 'by_pair')

os.makedirs(individual_dir, exist_ok=True)
os.makedirs(pair_dir, exist_ok=True)

# 找出误分类样本
mis_mask = (y_pred_classes != y_true_classes)
mis_indices = np.where(mis_mask)[0]

print('\n' + '=' * 50)
print('误分类样本输出:')
print('=' * 50)
print(f'误分类数量: {len(mis_indices)} / {len(x_test_raw)}')
print(f'误分类比例: {len(mis_indices) / len(x_test_raw):.4%}')
print('=' * 50)

records = []

def save_single_misclassified_image(idx, save_path):
    """
    保存单张误分类图片，并在图上标注真实类别和预测类别。
    """
    true_label = int(y_true_classes[idx])
    pred_label = int(y_pred_classes[idx])
    pred_conf = float(y_pred[idx, pred_label])
    true_prob = float(y_pred[idx, true_label])

    img = x_test_raw[idx]

    plt.figure(figsize=(3, 3))
    plt.imshow(img, cmap='gray', vmin=0, vmax=255)
    plt.axis('off')

    title = (
        f"index={idx}\n"
        f"true: {true_label} ({label_romaji[true_label]}/{label_kana[true_label]})\n"
        f"pred: {pred_label} ({label_romaji[pred_label]}/{label_kana[pred_label]})\n"
        f"conf={pred_conf:.3f}, true_prob={true_prob:.3f}"
    )
    plt.title(title, fontsize=9)
    plt.tight_layout()
    plt.savefig(save_path, dpi=200, bbox_inches='tight')
    plt.close()


# 保存每一个误分类样本
for idx in mis_indices:
    true_label = int(y_true_classes[idx])
    pred_label = int(y_pred_classes[idx])
    pred_conf = float(y_pred[idx, pred_label])
    true_prob = float(y_pred[idx, true_label])

    filename = (
        f"idx_{idx:05d}_"
        f"true_{true_label}_{label_romaji[true_label]}_"
        f"pred_{pred_label}_{label_romaji[pred_label]}_"
        f"conf_{pred_conf:.3f}.png"
    )

    save_path = os.path.join(individual_dir, filename)
    save_single_misclassified_image(idx, save_path)

    records.append({
        'test_index': idx,
        'true_label': true_label,
        'true_kana': label_kana[true_label],
        'true_romaji': label_romaji[true_label],
        'pred_label': pred_label,
        'pred_kana': label_kana[pred_label],
        'pred_romaji': label_romaji[pred_label],
        'pred_confidence': pred_conf,
        'true_class_probability': true_prob,
        'image_path': save_path
    })

# 保存误分类明细表
mis_df = pd.DataFrame(records)
mis_csv_path = os.path.join(mis_dir, 'misclassified_details.csv')
mis_df.to_csv(mis_csv_path, index=False, encoding='utf-8-sig')

print(f'误分类明细表已保存到: {mis_csv_path}')
print(f'所有单张误分类图片已保存到: {individual_dir}')


# ================================
# 统计每一种 true -> pred 的误分类型
# ================================

pair_summary = (
    mis_df
    .groupby(['true_label', 'true_kana', 'true_romaji',
              'pred_label', 'pred_kana', 'pred_romaji'])
    .size()
    .reset_index(name='count')
    .sort_values('count', ascending=False)
)

pair_summary_path = os.path.join(mis_dir, 'misclassified_pair_summary.csv')
pair_summary.to_csv(pair_summary_path, index=False, encoding='utf-8-sig')

print(f'误分类类型统计已保存到: {pair_summary_path}')
print('\n最常见的误分类类型:')
print(pair_summary.head(10))


# ================================
# 生成误分类样本总览图
# ================================

def save_misclassified_montage(indices, save_path, title, max_images=64, ncols=8):
    """
    把若干误分类样本拼成一张总览图。
    """
    indices = list(indices)[:max_images]
    if len(indices) == 0:
        return

    nrows = math.ceil(len(indices) / ncols)
    fig, axes = plt.subplots(nrows, ncols, figsize=(1.7 * ncols, 2.1 * nrows))

    if nrows == 1:
        axes = np.array(axes).reshape(1, -1)

    axes = axes.flatten()

    for ax in axes:
        ax.axis('off')

    for ax, idx in zip(axes, indices):
        true_label = int(y_true_classes[idx])
        pred_label = int(y_pred_classes[idx])
        pred_conf = float(y_pred[idx, pred_label])

        img = x_test_raw[idx]
        ax.imshow(img, cmap='gray', vmin=0, vmax=255)
        ax.axis('off')

        ax.set_title(
            f"T:{true_label}-{label_romaji[true_label]}\n"
            f"P:{pred_label}-{label_romaji[pred_label]}\n"
            f"{pred_conf:.2f}",
            fontsize=7
        )

    fig.suptitle(title, fontsize=14)
    plt.tight_layout()
    plt.savefig(save_path, dpi=250, bbox_inches='tight')
    plt.close()


# 误分类总览：前 64 个误分类样本
overview_path = os.path.join(mis_dir, 'misclassified_overview.png')
save_misclassified_montage(
    mis_indices,
    overview_path,
    title='Misclassified Test Images',
    max_images=64,
    ncols=8
)
print(f'误分类总览图已保存到: {overview_path}')


# 高置信度但预测错误的样本
top_conf_indices = (
    mis_df
    .sort_values('pred_confidence', ascending=False)
    ['test_index']
    .values
)

top_conf_path = os.path.join(mis_dir, 'misclassified_high_confidence.png')
save_misclassified_montage(
    top_conf_indices,
    top_conf_path,
    title='High-confidence Wrong Predictions',
    max_images=64,
    ncols=8
)
print(f'高置信度误分类总览图已保存到: {top_conf_path}')


# ================================
# 按 true -> pred 类型分别输出拼图
# ================================

max_pairs_to_plot = 20     # 只为最常见的前 20 种误分类型生成拼图
max_images_per_pair = 36   # 每种误分类型最多展示 36 张

for _, row in pair_summary.head(max_pairs_to_plot).iterrows():
    true_label = int(row['true_label'])
    pred_label = int(row['pred_label'])

    pair_indices = mis_df[
        (mis_df['true_label'] == true_label) &
        (mis_df['pred_label'] == pred_label)
    ]['test_index'].values

    pair_name = (
        f"true_{true_label}_{label_romaji[true_label]}_"
        f"pred_{pred_label}_{label_romaji[pred_label]}"
    )

    save_path = os.path.join(pair_dir, pair_name + '.png')

    title = (
        f"True {true_label} ({label_romaji[true_label]}/{label_kana[true_label]}) "
        f"-> Pred {pred_label} ({label_romaji[pred_label]}/{label_kana[pred_label]}), "
        f"count={len(pair_indices)}"
    )

    save_misclassified_montage(
        pair_indices,
        save_path,
        title=title,
        max_images=max_images_per_pair,
        ncols=6
    )

print(f'按误分类类型分组的拼图已保存到: {pair_dir}')

# 计算混淆矩阵
conf_matrix = confusion_matrix(y_true_classes, y_pred_classes)

# 绘制混淆矩阵
plt.figure(figsize=(10, 8))
sns.heatmap(conf_matrix, annot=True, fmt='d', cmap='Blues', 
            xticklabels=[str(i) for i in range(num_classes)],
            yticklabels=[str(i) for i in range(num_classes)])
plt.title('Confusion Matrix on Test Set', fontsize=16, fontweight='bold')
plt.xlabel('Predicted Label', fontsize=14)
plt.ylabel('True Label', fontsize=14)
plt.tight_layout()

# 保存混淆矩阵图像
plt.savefig('./report/figures/cnn_confusion_matrix.png', dpi=300, bbox_inches='tight')
plt.close()  # 关闭图像，避免在屏幕上显示

print("混淆矩阵已保存到 ./report/figures/cnn_confusion_matrix.png")
# 混淆矩阵绘制代码结束（到这里结束）

# 训练历史图表（原有的图表代码保持不变）
plt.figure(figsize=(12, 6))

plt.subplot(1, 2, 1)
plt.plot(history.history['accuracy'], label='train accuracy')
plt.plot(history.history['val_accuracy'], label='validation accuracy')
plt.title('accuracy')
plt.xlabel('epochs')
plt.ylabel('accuracy')
plt.legend()
plt.grid(True)

plt.subplot(1, 2, 2)
plt.plot(history.history['loss'], label='train loss')
plt.plot(history.history['val_loss'], label='validation loss')
plt.title('model loss')
plt.xlabel('epochs')
plt.ylabel('loss')
plt.legend()
plt.grid(True)

plt.show()