import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split

# Load the data
data = np.loadtxt(r'c:\Users\86136\Desktop\ex15.6\data')
test_indicator = np.loadtxt(r'c:\Users\86136\Desktop\ex15.6\test set indicator')

# Separate features and labels
X = data[:, :-1]  # All columns except the last one (features)
y = data[:, -1]   # Last column (labels)

# Split into training and test sets based on the test set indicator
train_indices = test_indicator == 0
test_indices = test_indicator == 1

X_train = X[train_indices]
y_train = y[train_indices]
X_test = X[test_indices]
y_test = y[test_indices]

# Number of features
n_features = X.shape[1]

# Define a range of m values to test
# m is the number of features to consider at each split
m_values = np.arange(1, n_features + 1, max(1, n_features // 20))
# Ensure we test some reasonable values
m_values = np.unique(np.concatenate([
    np.arange(1, min(10, n_features + 1)),
    np.linspace(10, n_features, 10, dtype=int)
]))
m_values = m_values[m_values <= n_features]

# Store results
oob_errors = []
test_errors = []

# Train random forest classifiers with different m values
for m in m_values:
    # Create and train the random forest with oob_score enabled
    rf = RandomForestClassifier(
        n_estimators=100,
        max_features=m,
        oob_score=True,
        random_state=42,
        n_jobs=-1
    )
    
    rf.fit(X_train, y_train)
    
    # OOB error
    oob_error = 1 - rf.oob_score_
    oob_errors.append(oob_error)
    
    # Test error
    test_pred = rf.predict(X_test)
    test_error = 1 - np.mean(test_pred == y_test)
    test_errors.append(test_error)
    
    print(f"m = {m:3d}: OOB Error = {oob_error:.4f}, Test Error = {test_error:.4f}")

# Plot the results
plt.figure(figsize=(10, 6))
plt.plot(m_values, oob_errors, 'o-', label='OOB Error', linewidth=2, markersize=6)
plt.plot(m_values, test_errors, 's-', label='Test Error', linewidth=2, markersize=6)
plt.xlabel('m (Number of Features)', fontsize=12)
plt.ylabel('Error Rate', fontsize=12)
plt.title('Random Forest: Sensitivity to Number of Features (m)', fontsize=14)
plt.legend(fontsize=11)
plt.grid(True, alpha=0.3)
plt.tight_layout()
plt.savefig(r'c:\Users\86136\Desktop\ex15.6\rf_sensitivity.png', dpi=300)
plt.show()

# Print summary statistics
print("\n" + "="*60)
print("Summary Statistics:")
print("="*60)
print(f"Total samples: {len(data)}")
print(f"Training samples: {len(X_train)}")
print(f"Test samples: {len(X_test)}")
print(f"Total features: {n_features}")
print(f"\nBest OOB Error: {min(oob_errors):.4f} at m = {m_values[np.argmin(oob_errors)]}")
print(f"Best Test Error: {min(test_errors):.4f} at m = {m_values[np.argmin(test_errors)]}")
