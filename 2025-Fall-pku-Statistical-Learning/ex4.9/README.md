QDA for Exercise 4.9

This folder contains a small Quadratic Discriminant Analysis (QDA) implementation
and a runner that loads `zip.train` and `zip.test` (from ESL website), fits a
separate Gaussian model per class, and reports test misclassification error.

Files:
- `qda.py`: QDA implementation and utility to load the CSV-like files.
- `run_qda.py`: runner script that prints confusion matrix and error.

Usage (from this folder):

Python 3.8+ is recommended. Install numpy if you don't have it.

Run:

```powershell
python run_qda.py
```

Notes:
- The loader expects rows of the form: index,label,feat1,feat2,...
- Small diagonal regularization is added to per-class covariances to keep
  them invertible.
