import numpy as np
from typing import Dict, Any


def load_csv(path: str):
    """Load dataset where each row is: index,label,feat1,feat2,..."""
    data = np.genfromtxt(path, delimiter=',')
    if data.ndim == 1:
        data = data.reshape(1, -1)
    # ignore first column (index)
    y = data[:, 1].astype(int)
    X = data[:, 2:]
    return X, y


class QDA:
    """Simple Quadratic Discriminant Analysis.

    Attributes:
        classes_: sorted array of unique class labels
        priors_: dict label -> prior probability
        means_: dict label -> mean vector
        covs_: dict label -> covariance matrix (regularized)
        cov_inv_: dict label -> inverse covariance
        log_det_: dict label -> log determinant
    """

    def __init__(self, reg: float = 1e-6):
        self.reg = reg
        self.use_unbiased = False
        self.classes_ = None
        self.priors_: Dict[Any, float] = {}
        self.means_: Dict[Any, np.ndarray] = {}
        self.covs_: Dict[Any, np.ndarray] = {}
        self.cov_inv_: Dict[Any, np.ndarray] = {}
        self.log_det_: Dict[Any, float] = {}

    def fit(self, X: np.ndarray, y: np.ndarray):
        n, p = X.shape
        classes, counts = np.unique(y, return_counts=True) # 每个类别的样本个数
        self.classes_ = classes
        for cls, cnt in zip(classes, counts):
            Xk = X[y == cls]
            mu = Xk.mean(axis=0)
            # covariance: allow unbiased (divide by n_k-1) or MLE (divide by n_k)
            diff = Xk - mu # 中心化
            if self.use_unbiased and Xk.shape[0] > 1:
                cov = (diff.T @ diff) / (Xk.shape[0] - 1)
            else:
                cov = (diff.T @ diff) / Xk.shape[0]
            # regularize
            cov += self.reg * np.eye(p) # 对角线加一个小值
            # compute inverse and log det robustly
            sign, logdet = np.linalg.slogdet(cov) # 符号和行列式的对数
            if sign <= 0: # 如果小于0就进一步加上一个小值
                # fallback tiny diagonal
                cov += (abs(sign) + 1e-8) * np.eye(p)
                sign, logdet = np.linalg.slogdet(cov)
            cov_inv = np.linalg.inv(cov)
            self.priors_[cls] = cnt / n
            self.means_[cls] = mu
            self.covs_[cls] = cov
            self.cov_inv_[cls] = cov_inv
            self.log_det_[cls] = logdet
        return self

    def _score_sample(self, x: np.ndarray, cls: Any) -> float:
        """Compute discriminant score (log posterior up to const) for one sample and class."""
        mu = self.means_[cls]
        cov_inv = self.cov_inv_[cls]
        logdet = self.log_det_[cls]
        diff = x - mu
        quad = diff @ cov_inv @ diff
        # log prior - 0.5 logdet - 0.5 quadratic term
        return np.log(self.priors_[cls]) - 0.5 * logdet - 0.5 * quad

    def predict(self, X: np.ndarray) -> np.ndarray:
        n = X.shape[0]
        ypred = np.empty(n, dtype=self.classes_.dtype)
        for i in range(n):
            scores = [self._score_sample(X[i], cls) for cls in self.classes_]
            ypred[i] = self.classes_[int(np.argmax(scores))]
        return ypred





def accuracy(y_true: np.ndarray, y_pred: np.ndarray) -> float:
    return np.mean(y_true == y_pred)
