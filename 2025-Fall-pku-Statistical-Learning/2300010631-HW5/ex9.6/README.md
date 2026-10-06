Ex. 9.6 — Ozone analysis (Python)

Files:
- `ozone data.txt` — data (provided)
- `ex9_6.py` — main analysis script
- `requirements.txt` — Python dependencies
- `plots/` — saved plots created by the script

Quick start (PowerShell):

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
python ex9_6.py
```

Notes:
- `pygam` and `pyearth` are used for GAM and MARS respectively. If missing, the script will skip that model and tell you how to install it.
- PRIM is optional and depends on which PRIM implementation you choose; the script contains a placeholder for PRIM fitting.
- The script computes the cube-root of `ozone` as the response and runs 10-fold CV for RMSE and R^2.
