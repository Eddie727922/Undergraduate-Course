Run experiment comparing linear regression vs k-NN (digits 2 vs 3)

Files:
- `zip.train`, `zip.test`: expected in this directory (from the book's zipcode dataset)
- `run_experiment.py`: script to run the comparison
- `requirements.txt`: Python dependencies

Usage:

1. Create a virtual environment and install dependencies:

```powershell
python -m venv .venv; .\.venv\Scripts\Activate.ps1; pip install -r requirements.txt
```

2. Run:

```powershell
python run_experiment.py
```

Output:
- `results.csv` in the same directory with columns (method,k,train_error,test_error)
