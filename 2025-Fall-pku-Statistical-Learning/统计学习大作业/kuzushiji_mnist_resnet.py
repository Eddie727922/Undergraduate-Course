import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader, random_split
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import classification_report, confusion_matrix
import seaborn as sns
import time
import warnings
import os  # 新增：用于创建目录
warnings.filterwarnings('ignore')

# 创建保存目录的函数
def create_directories():
    """创建用于保存模型和图片的目录"""
    directories = ['./resnet_model', './resnet_img']
    for directory in directories:
        if not os.path.exists(directory):
            os.makedirs(directory)
            print(f"Created directory: {directory}")
        else:
            print(f"Directory already exists: {directory}")
    
    return directories

# 设置随机种子以保证可重复性
def set_seed(seed=42):
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)
    np.random.seed(seed)
    torch.backends.cudnn.deterministic = True
    torch.backends.cudnn.benchmark = False

set_seed(42)

# 检查GPU是否可用
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"Using device: {device}")

# 1. 定义ResNet模型（使用你提供的核心代码）
def conv3x3(in_planes, out_planes, stride=1):
    """3x3 convolution with padding"""
    return nn.Conv2d(in_planes, out_planes, kernel_size=3, stride=stride,
                     padding=1, bias=False)

def conv1x1(in_planes, out_planes, stride=1):
    """1x1 convolution"""
    return nn.Conv2d(in_planes, out_planes, kernel_size=1, stride=stride, bias=False)

class BasicBlock(nn.Module):
    expansion = 1

    def __init__(self, inplanes, planes, stride=1, downsample=None):
        super(BasicBlock, self).__init__()
        self.conv1 = conv3x3(inplanes, planes, stride)
        self.bn1 = nn.BatchNorm2d(planes)
        self.relu = nn.ReLU(inplace=True)
        
        self.conv2 = conv3x3(planes, planes)
        self.bn2 = nn.BatchNorm2d(planes)
        self.downsample = downsample
        self.stride = stride

    def forward(self, x):
        identity = x

        out = self.conv1(x)
        out = self.bn1(out)
        out = self.relu(out)

        out = self.conv2(out)
        out = self.bn2(out)

        if self.downsample is not None:
            identity = self.downsample(x)

        out += identity
        out = self.relu(out)

        return out

class MyResNet(nn.Module):
    # Based on PyTorch ResNet-18
    
    def __init__(self, block, layers, num_classes=10, zero_init_residual=False):
        '''
        block: 残差块类型，例如BasicBlock或Bottleneck
        layers: 一个包含4个整数的列表，指定每个stage中残差块的数量
        num_classes: 分类任务的类别数，默认为10（例如KMNIST有10类）
        zero_init_residual: 是否对残差块中的最后一个BatchNorm层进行零初始化，默认为False
        '''
        super(MyResNet, self).__init__()
        self.inplanes = 64
        self.conv1 = nn.Conv2d(1, 64, kernel_size=7, stride=2, padding=3,
                               bias=False)
        self.bn1 = nn.BatchNorm2d(64)
        self.relu = nn.ReLU(inplace=True)
        self.maxpool = nn.MaxPool2d(kernel_size=3, stride=2, padding=1)
        self.layer1 = self._make_layer(block, 64, layers[0])
        self.layer2 = self._make_layer(block, 128, layers[1], stride=2)
        self.layer3 = self._make_layer(block, 256, layers[2], stride=2)
        self.layer4 = self._make_layer(block, 512, layers[3], stride=2)
        self.avgpool = nn.AdaptiveAvgPool2d((1, 1))

        for m in self.modules():
            if isinstance(m, nn.Conv2d):
                nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
            elif isinstance(m, nn.BatchNorm2d):
                nn.init.constant_(m.weight, 1)
                nn.init.constant_(m.bias, 0)

        # Zero-initialize the last BN in each residual branch,
        # so that the residual branch starts with zeros, and each residual block behaves like an identity.
        # This improves the model by 0.2~0.3% according to https://arxiv.org/abs/1706.02677
        if zero_init_residual:
            for m in self.modules():
                if isinstance(m, BasicBlock):
                    nn.init.constant_(m.bn2.weight, 0)
                    
        self.classifier = nn.Sequential(
            nn.Dropout(p=0.5),
            nn.Linear(512 * block.expansion, 256),
            nn.BatchNorm1d(256),
            nn.ReLU(inplace=True),
            nn.Dropout(p=0.5),
            nn.Linear(256, num_classes),
        )

    def _make_layer(self, block, planes, blocks, stride=1):
        downsample = None
        if stride != 1 or self.inplanes != planes * block.expansion:
            downsample = nn.Sequential(
                conv1x1(self.inplanes, planes * block.expansion, stride),
                nn.BatchNorm2d(planes * block.expansion),
            )

        layers = []
        layers.append(block(self.inplanes, planes, stride, downsample))
        self.inplanes = planes * block.expansion
        for _ in range(1, blocks):
            layers.append(block(self.inplanes, planes))

        return nn.Sequential(*layers)

    def forward(self, x):
        x = self.conv1(x)
        x = self.bn1(x)
        x = self.relu(x)
        x = self.maxpool(x)

        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)

        x = self.avgpool(x)
        x = torch.flatten(x, 1)
        x = self.classifier(x)

        return x  # 注意：去掉了log_softmax，因为我们将使用CrossEntropyLoss

# 创建ResNet-18模型
def resnet18(num_classes=10, zero_init_residual=False):
    """创建ResNet-18模型"""
    return MyResNet(BasicBlock, [2, 2, 2, 2], num_classes=num_classes, zero_init_residual=zero_init_residual)

# 2. 自定义Dataset类加载Numpy数据
class KMNISTDataset(Dataset):
    def __init__(self, images_path, labels_path, transform=None):
        """
        加载KMNIST数据集
        
        Args:
            images_path: 图像.npz文件路径
            labels_path: 标签.npz文件路径
            transform: 数据增强/预处理
        """
        # 加载.npz文件
        images_data = np.load(images_path)
        labels_data = np.load(labels_path)
        
        # 获取数组名（通常是'arr_0'）
        images_key = list(images_data.keys())[0]
        labels_key = list(labels_data.keys())[0]
        
        # 加载数据
        self.images = images_data[images_key]
        self.labels = labels_data[labels_key]
        
        # 确保图像是float32类型并在[0, 1]范围内
        self.images = self.images.astype(np.float32) / 255.0
        
        # 将图像从(60000, 28, 28)转换为(60000, 1, 28, 28)
        if len(self.images.shape) == 3:
            self.images = np.expand_dims(self.images, axis=1)
            
        self.transform = transform
        
        print(f"Loaded dataset: {images_path}")
        print(f"Images shape: {self.images.shape}, Labels shape: {self.labels.shape}")
        
    def __len__(self):
        return len(self.images)
    
    def __getitem__(self, idx):
        image = self.images[idx]
        label = self.labels[idx]
        
        # 转换为PyTorch张量
        image = torch.from_numpy(image).float()
        label = torch.tensor(label).long()
        
        if self.transform:
            image = self.transform(image)
            
        return image, label

# 3. 训练和评估函数
def train_epoch(model, device, train_loader, optimizer, criterion, epoch):
    """训练一个epoch"""
    model.train()
    train_loss = 0
    correct = 0
    total = 0
    
    for batch_idx, (data, target) in enumerate(train_loader):
        data, target = data.to(device), target.to(device)
        
        optimizer.zero_grad()
        output = model(data)
        loss = criterion(output, target)
        loss.backward()
        optimizer.step()
        
        train_loss += loss.item()
        _, predicted = output.max(1)
        total += target.size(0)
        correct += predicted.eq(target).sum().item()
        
        if batch_idx % 100 == 0:
            print(f'Train Epoch: {epoch} [{batch_idx * len(data)}/{len(train_loader.dataset)} '
                  f'({100. * batch_idx / len(train_loader):.0f}%)]\tLoss: {loss.item():.6f}')
    
    train_loss /= len(train_loader)
    train_acc = 100. * correct / total
    
    return train_loss, train_acc

def test(model, device, test_loader, criterion):
    """测试模型"""
    model.eval()
    test_loss = 0
    correct = 0
    total = 0
    all_predictions = []
    all_targets = []
    
    with torch.no_grad():
        for data, target in test_loader:
            data, target = data.to(device), target.to(device)
            output = model(data)
            test_loss += criterion(output, target).item()
            _, predicted = output.max(1)
            total += target.size(0)
            correct += predicted.eq(target).sum().item()
            
            all_predictions.extend(predicted.cpu().numpy())
            all_targets.extend(target.cpu().numpy())
    
    test_loss /= len(test_loader)
    test_acc = 100. * correct / total
    
    print(f'\nTest set: Average loss: {test_loss:.4f}, '
          f'Accuracy: {correct}/{total} ({test_acc:.2f}%)\n')
    
    return test_loss, test_acc, all_predictions, all_targets

def visualize_predictions(model, device, test_loader, num_images=10, save_dir='./resnet_img'):
    """可视化预测结果并保存"""
    model.eval()
    images, labels = next(iter(test_loader))
    images, labels = images[:num_images], labels[:num_images]
    images, labels = images.to(device), labels.to(device)
    
    with torch.no_grad():
        outputs = model(images)
        _, predicted = outputs.max(1)
    
    # 将图像从[0, 1]转换用于显示
    images = images.cpu().numpy()
    
    fig, axes = plt.subplots(2, 5, figsize=(15, 6))
    axes = axes.ravel()
    
    for idx in range(num_images):
        axes[idx].imshow(images[idx][0], cmap='gray')
        axes[idx].axis('off')
        axes[idx].set_title(f'True: {labels[idx].item()}, Pred: {predicted[idx].item()}', 
                          color='green' if labels[idx] == predicted[idx] else 'red')
    
    plt.suptitle('ResNet-18 Predictions on KMNIST', fontsize=16)
    plt.tight_layout()
    
    # 保存图片
    timestamp = time.strftime("%Y%m%d_%H%M%S")
    save_path = os.path.join(save_dir, f'predictions_{timestamp}.png')
    plt.savefig(save_path, dpi=300, bbox_inches='tight')
    print(f"Saved predictions visualization to: {save_path}")
    
    plt.show()

# 4. 主训练流程
def main():
    # 创建保存目录
    create_directories()
    
    # 加载数据
    print("Loading KMNIST dataset...")
    
    # 创建训练集和测试集
    train_dataset = KMNISTDataset(
        images_path='NumPy_data_format/kmnist-train-imgs.npz',
        labels_path='NumPy_data_format/kmnist-train-labels.npz'
    )
    
    test_dataset = KMNISTDataset(
        images_path='NumPy_data_format/kmnist-test-imgs.npz',
        labels_path='NumPy_data_format/kmnist-test-labels.npz'
    )
    
    # 从训练集中划分验证集
    train_size = int(0.9 * len(train_dataset))
    val_size = len(train_dataset) - train_size
    train_dataset, val_dataset = random_split(train_dataset, [train_size, val_size])
    
    print(f"Training samples: {len(train_dataset)}")
    print(f"Validation samples: {len(val_dataset)}")
    print(f"Testing samples: {len(test_dataset)}")
    
    # 创建数据加载器
    batch_size = 64
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True, num_workers=2)
    val_loader = DataLoader(val_dataset, batch_size=batch_size, shuffle=False, num_workers=2)
    test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False, num_workers=2)
    
    # 创建模型
    model = resnet18(num_classes=10, zero_init_residual=True).to(device)
    print("Model architecture:")
    print(model)
    
    # 计算模型参数数量
    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"\nTotal parameters: {total_params:,}")
    print(f"Trainable parameters: {trainable_params:,}")
    
    # 定义损失函数和优化器
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=0.001, weight_decay=1e-4)
    scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=5, gamma=0.5)
    
    # 训练参数
    epochs = 20
    train_losses, train_accs = [], []
    val_losses, val_accs = [], []
    test_losses, test_accs = [], []
    
    print(f"\nStarting training for {epochs} epochs...")
    start_time = time.time()
    
    # 训练循环
    best_val_acc = 0
    for epoch in range(1, epochs + 1):
        print(f"\n{'='*50}")
        print(f"Epoch {epoch}/{epochs}")
        print(f"{'='*50}")
        
        # 训练
        train_loss, train_acc = train_epoch(
            model, device, train_loader, optimizer, criterion, epoch
        )
        train_losses.append(train_loss)
        train_accs.append(train_acc)
        
        # 验证
        val_loss, val_acc, _, _ = test(
            model, device, val_loader, criterion
        )
        val_losses.append(val_loss)
        val_accs.append(val_acc)
        
        # 测试
        test_loss, test_acc, _, _ = test(
            model, device, test_loader, criterion
        )
        test_losses.append(test_loss)
        test_accs.append(test_acc)
        
        # 调整学习率
        scheduler.step()
        
        # 保存最佳模型
        if val_acc > best_val_acc:
            best_val_acc = val_acc
            model_path = './resnet_model/best_resnet_kmnist.pth'
            torch.save({
                'epoch': epoch,
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'val_acc': val_acc,
                'test_acc': test_acc,
            }, model_path)
            print(f"Best model saved to {model_path} with validation accuracy: {val_acc:.2f}%, test accuracy: {test_acc:.2f}%")
    
    training_time = time.time() - start_time
    print(f"\nTraining completed in {training_time:.2f} seconds")
    
    # 5. 结果可视化
    # 训练曲线 - 损失图
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(15, 5))
    
    ax1.plot(range(1, epochs+1), train_losses, 'b-', label='Train Loss')
    ax1.plot(range(1, epochs+1), val_losses, 'g-', label='Validation Loss')
    ax1.plot(range(1, epochs+1), test_losses, 'r-', label='Test Loss')
    ax1.set_xlabel('Epoch')
    ax1.set_ylabel('Loss')
    ax1.set_title('Training, Validation and Test Loss')
    ax1.legend()
    ax1.grid(True)
    
    ax2.plot(range(1, epochs+1), train_accs, 'b-', label='Train Accuracy')
    ax2.plot(range(1, epochs+1), val_accs, 'g-', label='Validation Accuracy')
    ax2.plot(range(1, epochs+1), test_accs, 'r-', label='Test Accuracy')
    ax2.set_xlabel('Epoch')
    ax2.set_ylabel('Accuracy (%)')
    ax2.set_title('Training, Validation and Test Accuracy')
    ax2.legend()
    ax2.grid(True)
    
    plt.tight_layout()
    
    # 保存训练曲线图
    training_curves_path = './resnet_img/training_curves.png'
    plt.savefig(training_curves_path, dpi=300, bbox_inches='tight')
    print(f"Saved training curves to: {training_curves_path}")
    
    plt.show()
    
    # 最终测试并生成分类报告
    print("\nFinal evaluation on test set...")
    test_loss, test_acc, predictions, targets = test(
        model, device, test_loader, criterion
    )
    
    # 混淆矩阵
    print("\nClassification Report:")
    print(classification_report(targets, predictions, digits=4))
    
    cm = confusion_matrix(targets, predictions)
    plt.figure(figsize=(10, 8))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', 
                xticklabels=range(10), yticklabels=range(10))
    plt.xlabel('Predicted')
    plt.ylabel('True')
    plt.title('Confusion Matrix - ResNet-18 on KMNIST')
    
    # 保存混淆矩阵图
    confusion_matrix_path = './resnet_img/confusion_matrix.png'
    plt.savefig(confusion_matrix_path, dpi=300, bbox_inches='tight')
    print(f"Saved confusion matrix to: {confusion_matrix_path}")
    
    plt.show()
    
    # 可视化预测结果
    visualize_predictions(model, device, test_loader, num_images=10, save_dir='./resnet_img')
    
    # 打印最终结果
    print(f"\n{'='*60}")
    print(f"Final Results:")
    print(f"{'='*60}")
    print(f"Best Validation Accuracy: {max(val_accs):.2f}%")
    print(f"Final Test Accuracy: {test_accs[-1]:.2f}%")
    print(f"Training Time: {training_time:.2f} seconds")
    print(f"{'='*60}")
    
    return model, test_accs[-1]

# 6. 加载已保存的最佳模型并进行测试
def load_and_test_best_model():
    """加载已保存的最佳模型并在测试集上评估"""
    # 创建模型
    model = resnet18(num_classes=10, zero_init_residual=True).to(device)
    
    # 加载保存的最佳模型 - 注意路径已更改
    model_path = './resnet_model/best_resnet_kmnist.pth'
    checkpoint = torch.load(model_path)
    model.load_state_dict(checkpoint['model_state_dict'])
    
    print(f"Loaded model from {model_path}")
    print(f"Model saved at epoch {checkpoint['epoch']}")
    print(f"Model validation accuracy: {checkpoint['val_acc']:.2f}%")
    print(f"Model test accuracy at that time: {checkpoint['test_acc']:.2f}%")
    
    # 加载测试数据
    test_dataset = KMNISTDataset(
        images_path='NumPy_data_format/kmnist-test-imgs.npz',
        labels_path='NumPy_data_format/kmnist-test-labels.npz'
    )
    test_loader = DataLoader(test_dataset, batch_size=64, shuffle=False, num_workers=2)
    
    # 评估模型
    criterion = nn.CrossEntropyLoss()
    test_loss, test_acc, predictions, targets = test(
        model, device, test_loader, criterion
    )
    
    return model, test_acc

# 7. 运行主程序
if __name__ == "__main__":
    # 创建保存目录
    create_directories()
    
    # 选项：训练新模型或加载已保存的模型
    train_new = True  # 设置为True训练新模型，False加载已保存的模型
    
    if train_new:
        print("Starting new training...")
        model, final_acc = main()
        
        # 保存最终模型
        final_model_path = './resnet_model/resnet18_kmnist_final.pth'
        torch.save(model.state_dict(), final_model_path)
        print(f"Final model saved to {final_model_path}")
        
        # 保存训练结果总结
        summary_path = './resnet_img/training_summary.txt'
        with open(summary_path, 'w') as f:
            f.write(f"ResNet-18 Training Summary\n")
            f.write(f"==========================\n")
            f.write(f"Final Test Accuracy: {final_acc:.2f}%\n")
            f.write(f"Model saved at: {final_model_path}\n")
            f.write(f"Images saved in: ./resnet_img/\n")
            f.write(f"Models saved in: ./resnet_model/\n")
        print(f"Training summary saved to {summary_path}")
    else:
        # 加载并测试最佳模型
        print("Loading pre-trained model...")
        model, test_acc = load_and_test_best_model()
        
        # 可视化预测结果
        test_dataset = KMNISTDataset(
            images_path='NumPy_data_format/kmnist-test-imgs.npz',
            labels_path='NumPy_data_format/kmnist-test-labels.npz'
        )
        test_loader = DataLoader(test_dataset, batch_size=64, shuffle=False, num_workers=2)
        visualize_predictions(model, device, test_loader, num_images=10, save_dir='./resnet_img')