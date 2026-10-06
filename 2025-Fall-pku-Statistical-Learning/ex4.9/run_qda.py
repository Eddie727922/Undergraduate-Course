import numpy as np
from qda import QDA, load_csv, accuracy
from collections import Counter


def confusion_matrix(y_true, y_pred, labels=None):
    if labels is None:
        labels = np.unique(np.concatenate([y_true, y_pred]))
    lab_to_i = {lab: i for i, lab in enumerate(labels)}
    cm = np.zeros((len(labels), len(labels)), dtype=int)
    for t, p in zip(y_true, y_pred):
        cm[lab_to_i[t], lab_to_i[p]] += 1
    return labels, cm


def main():
    X_train, y_train = load_csv('zip.train')
    X_test, y_test = load_csv('zip.test')
    experiments = []

    # 1) QDA default
    qda = QDA(reg=1e-6)
    qda.fit(X_train, y_train)
    y_qda = qda.predict(X_test)
    experiments.append(('QDA reg=1e-6', y_qda))

    # baseline QDA
    qda = QDA(reg=1e-6)
    qda.fit(X_train, y_train)
    y_qda = qda.predict(X_test)
    experiments.append(('QDA reg=1e-6', y_qda))

    # try a stronger regularization option as a second baseline
    qda2 = QDA(reg=1e-2)
    qda2.fit(X_train, y_train)
    y_qda2 = qda2.predict(X_test)
    experiments.append(('QDA reg=1e-2', y_qda2))

    # evaluate
    results = []
    for name, ypred in experiments:
        acc = accuracy(y_test, ypred)
        results.append((name, acc, 1 - acc))

    print("Results summary (name, accuracy, error):")
    for r in results:
        print(f"{r[0]:20s}  {r[1]:.6f}  {r[2]:.6f}")

    # print confusion for best method
    best = max(results, key=lambda x: x[1])
    best_name = best[0]
    best_pred = dict(experiments)[best_name]
    labels, cm = confusion_matrix(y_test, best_pred)
    print('\nBest method:', best_name)
    print(f"Classes: {labels}")
    print("Confusion matrix (rows=true, cols=pred):")
    print(cm)

    print(f"Test accuracy: {best[1]:.6f}")
    print(f"Test misclassification error: {best[2]:.6f}")

    # per-class error
    for i, lab in enumerate(labels):
        total = cm[i].sum()
        correct = cm[i, i]
        print(f"Class {lab}: {total-correct}/{total} errors ({(1 - correct/total):.4f})")


if __name__ == '__main__':
    main()
