"""
Run comparison between linear regression and k-NN on zipcode data (digits 2 vs 3).
Expects `zip.train` and `zip.test` in the same directory.
Outputs training and test errors for linear regression and k-NN with k in [1,3,5,7,15].
"""
import sys
from pathlib import Path
import numpy as np
from sklearn.linear_model import Ridge
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import zero_one_loss

DATA_DIR = Path(__file__).resolve().parent
#  __file__是当前.py文件路径,resolve是绝对路径,parent是父目录
TRAIN_FILE = DATA_DIR / 'zip.train'
TEST_FILE = DATA_DIR / 'zip.test'

KS = [1,3,5,7,15]


def load_zip_file(path):
    # Each line: label then 256 grayscale values
    data = []
    labels = []
    with open(path, 'r') as f: # 'r'是只读模式
        for line in f:
            parts = line.strip().split() 
            # 去掉末尾空格字符，按空格分割字符串
            if not parts:
                continue # 空行跳过
            label = int(float(parts[0]))
            vals = list(map(float, parts[1:]))
            labels.append(label)
            data.append(vals)
    return np.array(data), np.array(labels)


def filter_2_vs_3(X, y):
    mask = (y == 2) | (y == 3)
    Xf = X[mask]
    yf = y[mask] 
    # 布尔条件直接筛选子数组
    # map labels: 2 -> -1, 3 -> +1 for regression; for classifiers keep 2/3
    y_reg = np.where(yf == 2, -1, 1)
    # 满足条件时取-1，否则取1
    return Xf, yf, y_reg


def linear_regression_classifier(X_train, y_reg_train, X):
    # Use Ridge with small alpha to avoid singularities
    model = Ridge(alpha=1e-2, fit_intercept=True)
    model.fit(X_train, y_reg_train)
    preds_cont = model.predict(X)
    # decision: sign(pred) -> -1 maps to label 2, +1 maps to label 3
    preds_label = np.where(preds_cont < 0, 2, 3)
    return preds_label, preds_cont


def main():
    if not TRAIN_FILE.exists() or not TEST_FILE.exists():
        print(f"Missing data files. Make sure `zip.train` and `zip.test` are in {DATA_DIR}")
        sys.exit(1)

    X_train_all, y_train_all = load_zip_file(TRAIN_FILE)
    X_test_all, y_test_all = load_zip_file(TEST_FILE)

    X_train, y_train_clf, y_train_reg = filter_2_vs_3(X_train_all, y_train_all)
    X_test, y_test_clf, y_test_reg = filter_2_vs_3(X_test_all, y_test_all)

    results = []

    # Linear regression
    lr_preds_train, _ = linear_regression_classifier(X_train, y_train_reg, X_train)
    lr_preds_test, _ = linear_regression_classifier(X_train, y_train_reg, X_test)
    train_err_lr = zero_one_loss(y_train_clf, lr_preds_train)
    test_err_lr = zero_one_loss(y_test_clf, lr_preds_test)
    results.append(('linear_regression', 'NA', train_err_lr, test_err_lr))

    # k-NN
    for k in KS:
        knn = KNeighborsClassifier(n_neighbors=k)
        knn.fit(X_train, y_train_clf)
        train_pred = knn.predict(X_train)
        test_pred = knn.predict(X_test)
        train_err = zero_one_loss(y_train_clf, train_pred)
        test_err = zero_one_loss(y_test_clf, test_pred)
        results.append(('knn', k, train_err, test_err))

    # Print results
    print('method,k,train_error,test_error')
    for r in results:
        method, k, tr, te = r
        print(f"{method},{k},{tr:.4f},{te:.4f}")

    # Save to CSV
    out_csv = DATA_DIR / 'results.csv'
    with open(out_csv, 'w') as f:
        f.write('method,k,train_error,test_error\n')
        for r in results:
            method, k, tr, te = r
            f.write(f"{method},{k},{tr:.6f},{te:.6f}\n")

    print(f"Saved results to {out_csv}")


if __name__ == '__main__':
    main()
