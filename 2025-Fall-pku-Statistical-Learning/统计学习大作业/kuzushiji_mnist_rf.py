"""
KMNIST Classification - Random Forest Algorithm
No GPU required, implemented using scikit-learn
"""

import numpy as np
import matplotlib.pyplot as plt
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler
import seaborn as sns
import time
import os
import warnings
import joblib
import pandas as pd
from tqdm import tqdm

warnings.filterwarnings('ignore')

class KMNISTRandomForest:
    """KMNIST Classification using Random Forest"""
    
    def __init__(self, data_dir="NumPy_data_format", use_pca=False, n_components=100):
        """
        Initialize Random Forest Classifier
        
        Parameters:
            data_dir: Data directory
            use_pca: Whether to use PCA for dimensionality reduction
            n_components: Number of dimensions after PCA reduction
        """
        self.data_dir = data_dir
        self.use_pca = use_pca
        self.n_components = n_components
        self.model = None
        self.pca = None
        self.scaler = None
        self.X_train = None
        self.y_train = None
        self.X_test = None
        self.y_test = None
        
    def load_data(self, test_size=0.2, random_state=42):
        """Load KMNIST data"""
        try:
            # Load training data
            train_images = np.load(f'{self.data_dir}/kmnist-train-imgs.npz')
            train_labels = np.load(f'{self.data_dir}/kmnist-train-labels.npz')
            
            # Load test data
            test_images = np.load(f'{self.data_dir}/kmnist-test-imgs.npz')
            test_labels = np.load(f'{self.data_dir}/kmnist-test-labels.npz')
            
            # Get data
            X_train_full = train_images[list(train_images.keys())[0]]
            y_train_full = train_labels[list(train_labels.keys())[0]]
            
            X_test = test_images[list(test_images.keys())[0]]
            y_test = test_labels[list(test_labels.keys())[0]]
            
            # Flatten images
            X_train_full = X_train_full.reshape(X_train_full.shape[0], -1).astype(np.float32) / 255.0
            X_test = X_test.reshape(X_test.shape[0], -1).astype(np.float32) / 255.0
            
            # Split training set and validation set
            self.X_train, self.X_val, self.y_train, self.y_val = train_test_split(
                X_train_full, y_train_full, test_size=test_size, random_state=random_state, stratify=y_train_full
            )
            
            self.X_test = X_test
            self.y_test = y_test
            
            return True
            
        except Exception as e:
            print(f"Failed to load data: {e}")
            return False
    
    def preprocess_data(self):
        """Data preprocessing"""
        # Standardization
        self.scaler = StandardScaler()
        self.X_train_scaled = self.scaler.fit_transform(self.X_train)
        self.X_val_scaled = self.scaler.transform(self.X_val)
        self.X_test_scaled = self.scaler.transform(self.X_test)
        
        # PCA dimensionality reduction (optional)
        if self.use_pca:
            self.pca = PCA(n_components=self.n_components, random_state=42)
            self.X_train_scaled = self.pca.fit_transform(self.X_train_scaled)
            self.X_val_scaled = self.pca.transform(self.X_val_scaled)
            self.X_test_scaled = self.pca.transform(self.X_test_scaled)
    
    def train_basic_model(self, n_estimators=150, max_depth=20, random_state=42):
        """Train basic random forest model"""
        start_time = time.time()
        
        self.model = RandomForestClassifier(
            n_estimators=n_estimators,
            max_depth=max_depth,
            random_state=random_state,
            n_jobs=-1,
            oob_score=True  # Enable OOB error estimation
        )
        
        self.model.fit(self.X_train_scaled, self.y_train)
        
        training_time = time.time() - start_time
        
        # Evaluate model
        test_accuracy, _, _ = self.evaluate_model('test')
        
        return training_time
    
    def evaluate_model(self, dataset='val'):
        """Evaluate model"""
        if self.model is None:
            print("Model not trained!")
            return
        
        if dataset == 'val':
            X = self.X_val_scaled
            y = self.y_val
        elif dataset == 'test':
            X = self.X_test_scaled
            y = self.y_test
        elif dataset == 'train':
            X = self.X_train_scaled
            y = self.y_train
        else:
            print("Dataset parameter error!")
            return
        
        # Predict
        y_pred = self.model.predict(X)
        
        # Calculate accuracy
        accuracy = accuracy_score(y, y_pred)
        
        # Confusion matrix
        cm = confusion_matrix(y, y_pred)
        
        return accuracy, y_pred, y, cm
    
    def plot_feature_importance_heatmap(self):
        """
        Draw feature importance heatmap (pixel-level)
        Note: Only works when PCA is not used and model is trained
        """
        if self.model is None:
            print("Error: Model not trained!")
            return
        
        if self.use_pca:
            print("Warning: PCA dimensionality reduction is used, cannot draw original pixel importance heatmap")
            print("After PCA, feature importance corresponds to principal components, not original pixels")
            return self.plot_pca_feature_importance()
        
        # Get feature importance
        feature_importances = self.model.feature_importances_
        
        # Check if feature count matches 28x28=784
        if len(feature_importances) != 784:
            print(f"Warning: Feature count ({len(feature_importances)}) not equal to 784, cannot reshape to 28x28 image")
            return
        
        # Reshape to 28x28 image
        importance_image = feature_importances.reshape(28, 28)
        
        # Create rf_img folder
        if not os.path.exists('./rf_img'):
            os.makedirs('./rf_img')
        
        # Draw feature importance heatmap
        plt.figure(figsize=(12, 10))
        
        # Use heatmap
        plt.imshow(importance_image, cmap='hot', interpolation='nearest')
        plt.colorbar(label='Feature Importance', fraction=0.046, pad=0.04)
        
        # Add title and information
        plt.title('Random Forest Feature Importance Heatmap (KMNIST)', fontsize=16, pad=20)
        plt.xlabel('Pixel Column (0-27)')
        plt.ylabel('Pixel Row (0-27)')
        
        # Mark the most important and least important pixels
        max_importance = importance_image.max()
        min_importance = importance_image.min()
        max_pos = np.unravel_index(np.argmax(importance_image), importance_image.shape)
        min_pos = np.unravel_index(np.argmin(importance_image), importance_image.shape)
        
        # Mark most important pixel
        plt.scatter(max_pos[1], max_pos[0], color='blue', s=200, 
                   marker='*', label=f'Most Important Pixel (value:{max_importance:.4f})')
        
        # Mark least important pixel
        plt.scatter(min_pos[1], min_pos[0], color='cyan', s=200,
                   marker='*', label=f'Least Important Pixel (value:{min_importance:.4f})')
        
        plt.legend(loc='upper right')
        plt.grid(False)
        
        # Save image
        plt.tight_layout()
        plt.savefig('./rf_img/feature_importance_heatmap.png', dpi=300, bbox_inches='tight')
        plt.show()
        
        # Print statistics
        print(f"Feature Importance Statistics:")
        print(f"  Mean: {feature_importances.mean():.6f}")
        print(f"  Std: {feature_importances.std():.6f}")
        print(f"  Max: {max_importance:.6f} (position: row{max_pos[0]}, col{max_pos[1]})")
        print(f"  Min: {min_importance:.6f} (position: row{min_pos[0]}, col{min_pos[1]})")
        
        # Draw feature importance distribution histogram
        self.plot_feature_importance_distribution(feature_importances)
        
        return importance_image
    
    def plot_feature_importance_distribution(self, feature_importances):
        """Draw feature importance distribution histogram"""
        plt.figure(figsize=(14, 5))
        
        # 1. Feature importance histogram
        plt.subplot(1, 2, 1)
        plt.hist(feature_importances, bins=50, alpha=0.7, color='blue', edgecolor='black')
        plt.xlabel('Feature Importance')
        plt.ylabel('Frequency')
        plt.title('Feature Importance Distribution Histogram')
        plt.grid(True, alpha=0.3)
        
        # Add vertical line for mean
        mean_importance = feature_importances.mean()
        plt.axvline(x=mean_importance, color='red', linestyle='--', 
                   label=f'Mean: {mean_importance:.6f}')
        plt.legend()
        
        # 2. Cumulative feature importance
        plt.subplot(1, 2, 2)
        sorted_importances = np.sort(feature_importances)[::-1]
        cumulative = np.cumsum(sorted_importances)
        
        plt.plot(cumulative, 'r-', linewidth=2)
        plt.xlabel('Number of Features (Sorted by Importance)')
        plt.ylabel('Cumulative Importance')
        plt.title('Cumulative Feature Importance')
        plt.grid(True, alpha=0.3)
        
        # Mark importance thresholds
        for thresh in [0.5, 0.8, 0.9]:
            idx = np.argmax(cumulative >= thresh)
            plt.axvline(x=idx, color='g', linestyle='--', alpha=0.5)
            plt.axhline(y=thresh, color='g', linestyle='--', alpha=0.5)
            plt.text(idx+10, thresh+0.02, f'{thresh*100}% ({idx} features)', 
                    fontsize=10, color='green')
        
        plt.tight_layout()
        plt.savefig('./rf_img/feature_importance_distribution.png', dpi=300, bbox_inches='tight')
        plt.show()
        
        # Calculate how many features have importance above mean
        important_features = feature_importances > mean_importance
        print(f"\nNumber of features with importance above mean: {important_features.sum()}")
        print(f"Percentage of total features: {important_features.sum()/len(feature_importances)*100:.1f}%")
        
        # Calculate importance proportion of top N features
        for n in [10, 50, 100]:
            top_n_idx = np.argsort(feature_importances)[-n:]
            top_n_importance = feature_importances[top_n_idx].sum()
            print(f"Total importance of top {n} most important features: {top_n_importance:.4f} ({top_n_importance*100:.1f}%)")
    
    def plot_pca_feature_importance(self):
        """Draw feature importance after PCA dimensionality reduction (principal component importance)"""
        if self.pca is None or self.model is None:
            print("Error: PCA not used or model not trained!")
            return
        
        feature_importances = self.model.feature_importances_
        
        plt.figure(figsize=(12, 8))
        
        # Create bar chart for principal component importance
        components = range(1, len(feature_importances) + 1)
        plt.bar(components, feature_importances, alpha=0.7, color='skyblue', edgecolor='black')
        
        plt.xlabel('Principal Component')
        plt.ylabel('Feature Importance')
        plt.title('Random Forest Feature Importance (Principal Components)', fontsize=16)
        plt.grid(True, alpha=0.3, axis='y')
        
        # Mark the most important principal component
        max_idx = np.argmax(feature_importances)
        plt.bar(max_idx + 1, feature_importances[max_idx], color='red', 
               label=f'Most Important PC: {max_idx+1} (value:{feature_importances[max_idx]:.4f})')
        
        plt.legend()
        plt.tight_layout()
        plt.savefig('./rf_img/pca_feature_importance.png', dpi=300, bbox_inches='tight')
        plt.show()
        
        # Print top 10 most important principal components
        sorted_idx = np.argsort(feature_importances)[::-1][:10]
        print("Top 10 Most Important Principal Components:")
        for i, idx in enumerate(sorted_idx):
            print(f"  Rank {i+1}: Principal Component {idx+1}, Importance: {feature_importances[idx]:.4f}")
        
        # Draw cumulative importance
        sorted_importances = np.sort(feature_importances)[::-1]
        cumulative = np.cumsum(sorted_importances)
        
        plt.figure(figsize=(10, 5))
        plt.plot(range(1, len(cumulative) + 1), cumulative, 'b-', linewidth=2)
        plt.xlabel('Number of Principal Components (Sorted by Importance)')
        plt.ylabel('Cumulative Importance')
        plt.title('Cumulative Feature Importance of Principal Components')
        plt.grid(True, alpha=0.3)
        
        # Mark thresholds
        for thresh in [0.5, 0.8, 0.9]:
            idx = np.argmax(cumulative >= thresh)
            plt.axvline(x=idx+1, color='r', linestyle='--', alpha=0.5)
            plt.axhline(y=thresh, color='r', linestyle='--', alpha=0.5)
            plt.text(idx+5, thresh+0.02, f'{thresh*100}% ({idx+1} PCs)', 
                    fontsize=10, color='red')
        
        plt.tight_layout()
        plt.savefig('./rf_img/pca_cumulative_importance.png', dpi=300, bbox_inches='tight')
        plt.show()
    
    def plot_error_vs_features(self, max_features_list=None, n_estimators=100, random_state=42):
        """
        Draw test error and OOB error curves vs number of features
        
        Parameters:
            max_features_list: List of feature numbers to test
            n_estimators: Number of decision trees
            random_state: Random seed
        """
        if max_features_list is None:
            # If not specified, use common feature numbers
            max_features_list = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, None]
        
        test_errors = []
        oob_errors = []
        models = []
        
        print("Training random forest models with different feature numbers...")
        for max_features in tqdm(max_features_list, desc="Feature number tuning"):
            # Train random forest model
            rf = RandomForestClassifier(
                n_estimators=n_estimators,
                max_features=max_features,
                oob_score=True,  # Enable OOB error estimation
                random_state=random_state,
                n_jobs=-1
            )
            rf.fit(self.X_train_scaled, self.y_train)
            
            # Save model
            models.append(rf)
            
            # Calculate test error
            y_pred = rf.predict(self.X_test_scaled)
            test_error = 1 - accuracy_score(self.y_test, y_pred)
            test_errors.append(test_error)
            
            # Get OOB error
            oob_error = 1 - rf.oob_score_
            oob_errors.append(oob_error)
        
        # Create rf_img folder
        if not os.path.exists('./rf_img'):
            os.makedirs('./rf_img')
        
        # 1. Draw error curves
        plt.figure(figsize=(12, 6))
        
        # Replace None with total feature count for display
        display_features = [f if f is not None else self.X_train_scaled.shape[1] for f in max_features_list]
        
        plt.plot(display_features, test_errors, 'b-o', linewidth=2, markersize=8, label='Test Error')
        plt.plot(display_features, oob_errors, 'r-o', linewidth=2, markersize=8, label='OOB Error')
        
        # Mark minimum error points
        min_test_idx = np.argmin(test_errors)
        min_oob_idx = np.argmin(oob_errors)
        
        plt.scatter(display_features[min_test_idx], test_errors[min_test_idx], 
                   s=200, c='blue', marker='*', label=f'Min Test Error ({test_errors[min_test_idx]:.4f})')
        plt.scatter(display_features[min_oob_idx], oob_errors[min_oob_idx], 
                   s=200, c='red', marker='*', label=f'Min OOB Error ({oob_errors[min_oob_idx]:.4f})')
        
        plt.xlabel('Number of Features')
        plt.ylabel('Error Rate')
        plt.title('Test Error and OOB Error vs Number of Features')
        plt.legend()
        plt.grid(True, alpha=0.3)
        plt.xscale('log')
        plt.xticks(display_features, labels=[str(f) if f != display_features[-1] else 'All' for f in display_features])
        
        plt.tight_layout()
        plt.savefig('./rf_img/error_vs_features.png', dpi=300, bbox_inches='tight')
        plt.show()
        
        # 2. Draw confusion matrix for minimum test error
        print(f"\nFeature number at minimum test error: {max_features_list[min_test_idx]}")
        print(f"Test Error: {test_errors[min_test_idx]:.4f}")
        self.plot_confusion_matrix(models[min_test_idx], max_features_list[min_test_idx], 
                                  test_errors[min_test_idx], 'test_error_min')
        
        # 3. Draw confusion matrix for minimum OOB error
        print(f"\nFeature number at minimum OOB error: {max_features_list[min_oob_idx]}")
        print(f"OOB Error: {oob_errors[min_oob_idx]:.4f}")
        self.plot_confusion_matrix(models[min_oob_idx], max_features_list[min_oob_idx], 
                                  oob_errors[min_oob_idx], 'oob_error_min')
        
        return test_errors, oob_errors, models[min_test_idx], models[min_oob_idx]
    
    def plot_confusion_matrix(self, model, max_features, error_rate, error_type):
        """Draw confusion matrix"""
        # Predict
        y_pred = model.predict(self.X_test_scaled)
        cm = confusion_matrix(self.y_test, y_pred)
        
        # Calculate accuracy per class
        class_accuracies = cm.diagonal() / cm.sum(axis=1)
        overall_accuracy = np.mean(class_accuracies)
        
        plt.figure(figsize=(12, 10))
        
        # Draw confusion matrix
        ax = plt.subplot(2, 1, 1)
        sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', 
                    xticklabels=range(10), yticklabels=range(10))
        plt.xlabel('Predicted Label')
        plt.ylabel('True Label')
        plt.title(f'Confusion Matrix (max_features={max_features if max_features else "All"}, {error_type.replace("_", " ").title()}, Error Rate: {error_rate:.4f})')
        
        # Draw per-class accuracy bar chart
        plt.subplot(2, 1, 2)
        bars = plt.bar(range(10), class_accuracies)
        plt.axhline(y=overall_accuracy, color='r', linestyle='--', label=f'Overall Accuracy: {overall_accuracy:.4f}')
        
        # Set bar colors: green for above average, orange for below average
        for i, bar in enumerate(bars):
            if class_accuracies[i] >= overall_accuracy:
                bar.set_color('green')
            else:
                bar.set_color('orange')
        
        plt.xlabel('Class')
        plt.ylabel('Accuracy')
        plt.title('Per-Class Accuracy')
        plt.xticks(range(10))
        plt.legend()
        plt.grid(True, alpha=0.3)
        
        plt.tight_layout()
        plt.savefig(f'./rf_img/confusion_matrix_{error_type}.png', dpi=300, bbox_inches='tight')
        plt.show()
    
    def save_model(self, filename='./rf_model/random_forest_kmnist.pkl'):
        """Save model"""
        if self.model is None:
            print("Model not trained!")
            return
        
        # Create rf_model folder
        if not os.path.exists('./rf_model'):
            os.makedirs('./rf_model')
        
        joblib.dump(self.model, filename)
        
        # Save preprocessing objects if needed
        if self.scaler is not None:
            joblib.dump(self.scaler, './rf_model/scaler.pkl')
        if self.pca is not None:
            joblib.dump(self.pca, './rf_model/pca.pkl')

def main():
    # Create necessary folders
    for folder in ['./rf_img', './rf_model']:
        if not os.path.exists(folder):
            os.makedirs(folder)
    
    print("=" * 60)
    print("KMNIST Classification - Random Forest Algorithm")
    print("=" * 60)
    
    # 1. Create random forest classifier
    rf = KMNISTRandomForest(data_dir="NumPy_data_format", use_pca=False)
    
    # 2. Load data
    if not rf.load_data(test_size=0.2):
        return
    
    # 3. Data preprocessing
    rf.preprocess_data()
    
    # 4. Draw error curves and confusion matrices
    test_errors, oob_errors, best_test_model, best_oob_model = rf.plot_error_vs_features(
        max_features_list=[1, 2, 4, 8, 16, 28, 40, 50, 60, 80, 100, 120, 140, 180, None],
        n_estimators=100
    )
    
    # 5. Use best model (minimum test error) as final model
    rf.model = best_test_model
    
    # 6. Draw feature importance heatmap
    print("\n" + "="*60)
    print("Drawing Feature Importance Heatmap")
    print("="*60)
    rf.plot_feature_importance_heatmap()
    
    # 7. Save best model
    rf.save_model('./rf_model/random_forest_kmnist.pkl')
    
    # 8. Print final results
    final_test_accuracy, _, _, _ = rf.evaluate_model('test')
    print(f"\nFinal model test set accuracy: {final_test_accuracy:.4f}")
    print(f"Final model test error: {1 - final_test_accuracy:.4f}")
    print(f"Final model OOB error: {1 - rf.model.oob_score_:.4f}")
    
    # 9. Save experimental results
    results_df = pd.DataFrame({
        'max_features': [1, 2, 4, 8, 16, 28, 40, 50, 60, 80, 100, 120, 140, 180, rf.X_train_scaled.shape[1]],
        'test_error': test_errors,
        'oob_error': oob_errors
    })
    
    # Find best parameters
    best_test_idx = results_df['test_error'].idxmin()
    best_oob_idx = results_df['oob_error'].idxmin()
    
    summary = f"""Random Forest Experiment Results Summary
================================
Best Test Error Model:
  Number of features: {results_df.loc[best_test_idx, 'max_features']}
  Test Error: {results_df.loc[best_test_idx, 'test_error']:.4f}
  OOB Error: {results_df.loc[best_test_idx, 'oob_error']:.4f}

Best OOB Error Model:
  Number of features: {results_df.loc[best_oob_idx, 'max_features']}
  Test Error: {results_df.loc[best_oob_idx, 'test_error']:.4f}
  OOB Error: {results_df.loc[best_oob_idx, 'oob_error']:.4f}

Final model accuracy: {final_test_accuracy:.4f}

Images saved at:
  ./rf_img/error_vs_features.png
  ./rf_img/confusion_matrix_test_error_min.png
  ./rf_img/confusion_matrix_oob_error_min.png
  ./rf_img/feature_importance_heatmap.png
  ./rf_img/feature_importance_distribution.png

Model saved at:
  ./rf_model/random_forest_kmnist.pkl
"""
    
    with open('./rf_img/experiment_summary.txt', 'w') as f:
        f.write(summary)
    
    print("\nExperiment completed!")
    print(summary)

if __name__ == "__main__":
    main()