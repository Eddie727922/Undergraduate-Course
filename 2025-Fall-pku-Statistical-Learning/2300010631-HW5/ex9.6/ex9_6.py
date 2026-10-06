#!/usr/bin/env python3
# ex9_6.py
# Python analysis for Ex. 9.6 (ozone data)
# - Loads `ozone data.txt`
# - Fits GAM (pygam), Regression Tree (sklearn), MARS (pyearth)
# - Runs 10-fold CV and saves simple plots and metrics

import os
import sys
import math
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error, r2_score
from sklearn.tree import DecisionTreeRegressor, plot_tree

# Try imports for optional methods
try:
    from pygam import LinearGAM, s
    HAVE_PYGAM = True
except Exception:
    HAVE_PYGAM = False

try:
    from pyearth import Earth
    HAVE_PYEARTH = True
except Exception:
    HAVE_PYEARTH = False

# PRIM optional — may not be installed
try:
    import prim
    HAVE_PRIM = True
except Exception:
    HAVE_PRIM = False

DATA_FILE = os.path.join(os.path.dirname(__file__), 'ozone data.txt')
PLOTS_DIR = os.path.join(os.path.dirname(__file__), 'plots')
os.makedirs(PLOTS_DIR, exist_ok=True)

def load_data(path=DATA_FILE):
    df = pd.read_csv(path, sep='\t')
    # Ensure columns are named as expected
    df = df.rename(columns=lambda s: s.strip())
    # Drop rows with missing values in the predictors or response
    df = df[['ozone', 'temperature', 'wind', 'radiation']].dropna().copy()
    # Response: cube root of ozone (as requested)
    df['y'] = np.sign(df['ozone']) * np.abs(df['ozone']) ** (1/3)
    X = df[['temperature', 'wind', 'radiation']].values
    y = df['y'].values
    return df, X, y

def cv_evaluate(factory, X, y, n_splits=10, random_state=1):
    kf = KFold(n_splits=n_splits, shuffle=True, random_state=random_state)
    rmses = []
    r2s = []
    for train_idx, test_idx in kf.split(X):
        X_train, X_test = X[train_idx], X[test_idx]
        y_train, y_test = y[train_idx], y[test_idx]
        model = factory()
        model.fit(X_train, y_train)
        y_pred = model.predict(X_test)
        rmses.append(math.sqrt(mean_squared_error(y_test, y_pred)))
        r2s.append(r2_score(y_test, y_pred))
    return np.mean(rmses), np.std(rmses), np.mean(r2s), np.std(r2s)

def fit_and_report_gam(df, X, y):
    if not HAVE_PYGAM:
        print('\npygam not installed — skipping GAM. Install with `pip install pygam`.')
        return
    print('\nFitting GAM (pygam) with smooth terms for temperature, wind, radiation...')
    def factory():
        return LinearGAM(s(0) + s(1) + s(2))
    mean_rmse, sd_rmse, mean_r2, sd_r2 = cv_evaluate(factory, X, y)
    print(f'GAM CV RMSE: {mean_rmse:.4f} (sd {sd_rmse:.4f}), R2: {mean_r2:.4f} (sd {sd_r2:.4f})')
    gam = factory()
    gam.fit(X, y)
    # Summary
    print('\nGAM summary:')
    try:
        print(gam.summary())
    except Exception:
        pass
    # Partial dependence plots (pygam built-in)
    try:
        fig = gam.plot(figsize=(9, 3))
        fig.suptitle('GAM partials (cube-root ozone)')
        out = os.path.join(PLOTS_DIR, 'gam_partials.png')
        fig.savefig(out, bbox_inches='tight')
        print(f'Saved GAM partial plots to {out}')
    except Exception as e:
        print('Could not produce GAM partials plot:', e)
    # Pred vs true
    y_pred = gam.predict(X)
    plt.figure()
    plt.scatter(y, y_pred)
    plt.xlabel('Observed cube-root(ozone)')
    plt.ylabel('Predicted')
    plt.title('GAM: Predicted vs Observed')
    out = os.path.join(PLOTS_DIR, 'gam_pred_vs_obs.png')
    plt.savefig(out, bbox_inches='tight')
    plt.close()
    print(f'Saved GAM pred vs obs to {out}')

def fit_and_report_tree(df, X, y):
    print('\nFitting Regression Tree (sklearn DecisionTreeRegressor)...')
    def factory():
        return DecisionTreeRegressor(random_state=1)
    mean_rmse, sd_rmse, mean_r2, sd_r2 = cv_evaluate(factory, X, y)
    print(f'Tree CV RMSE: {mean_rmse:.4f} (sd {sd_rmse:.4f}), R2: {mean_r2:.4f} (sd {sd_r2:.4f})')
    model = factory()
    model.fit(X, y)
    # Tree plot
    try:
        plt.figure(figsize=(12,6))
        plot_tree(model, feature_names=['temperature','wind','radiation'], filled=True, rounded=True)
        out = os.path.join(PLOTS_DIR, 'tree_plot.png')
        plt.savefig(out, bbox_inches='tight')
        plt.close()
        print(f'Saved decision tree plot to {out}')
    except Exception as e:
        print('Could not plot tree:', e)
    # Pred vs true
    y_pred = model.predict(X)
    plt.figure()
    plt.scatter(y, y_pred)
    plt.xlabel('Observed cube-root(ozone)')
    plt.ylabel('Predicted')
    plt.title('Decision Tree: Predicted vs Observed')
    out = os.path.join(PLOTS_DIR, 'tree_pred_vs_obs.png')
    plt.savefig(out, bbox_inches='tight')
    plt.close()
    print(f'Saved Tree pred vs obs to {out}')

def fit_and_report_mars(df, X, y):
    if not HAVE_PYEARTH:
        print('\npyearth (Earth/MARS) not installed — skipping MARS. Install with `pip install pyearth`.')
        return
    print('\nFitting MARS (pyearth.Earth)...')
    def factory():
        return Earth()
    mean_rmse, sd_rmse, mean_r2, sd_r2 = cv_evaluate(factory, X, y)
    print(f'MARS CV RMSE: {mean_rmse:.4f} (sd {sd_rmse:.4f}), R2: {mean_r2:.4f} (sd {sd_r2:.4f})')
    model = factory()
    model.fit(X, y)
    # Print summary if available
    try:
        print('\nMARS summary:')
        print(model.summary())
    except Exception:
        pass
    # Pred vs true
    y_pred = model.predict(X)
    plt.figure()
    plt.scatter(y, y_pred)
    plt.xlabel('Observed cube-root(ozone)')
    plt.ylabel('Predicted')
    plt.title('MARS: Predicted vs Observed')
    out = os.path.join(PLOTS_DIR, 'mars_pred_vs_obs.png')
    plt.savefig(out, bbox_inches='tight')
    plt.close()
    print(f'Saved MARS pred vs obs to {out}')

def fit_and_report_prim(df, X, y):
    if not HAVE_PRIM:
        print('\nPRIM not installed or unavailable — skipping PRIM. Consider `pip install prim` or `pip install primpy` if desired.')
        return
    print('\nFitting PRIM (optional) — NOTE: method-specific code may vary by package...')
    try:
        # Example for prim (if package provides a Region class). This is placeholder: actual API depends on package.
        xp = df[['temperature','wind','radiation']].values
        yp = df['y'].values
        prim_obj = prim.Prim(xp, yp)
        box = prim_obj.find_box()
        print('PRIM region summary:', box)
    except Exception as e:
        print('PRIM fitting failed or API mismatched:', e)

def main():
    df, X, y = load_data()
    print('Loaded data with', len(df), 'observations')
    print('Columns:', list(df.columns))
    fit_and_report_gam(df, X, y)
    fit_and_report_tree(df, X, y)
    fit_and_report_mars(df, X, y)
    fit_and_report_prim(df, X, y)
    # Save a simple combined preds plot for comparison
    print('\nDone. Plots and basic summaries saved in "plots" folder.')

if __name__ == '__main__':
    main()
