from sklearn.neural_network import MLPClassifier

# -----------------------------
# Training Data
# -----------------------------
# X = study hours
data_X = [[1], [2], [3], [4], [5], [6], [7], [8], [9], [10]]
# y = 0 -> Fail, 1 -> Pass
data_y = [0, 0, 0, 0, 1, 1, 1, 1, 1, 1]

# -----------------------------
# Build ANN Model with scikit-learn
# -----------------------------
model = MLPClassifier(hidden_layer_sizes=(8,4), activation='relu', solver='adam', max_iter=1000, random_state=42)

# Train model
model.fit(data_X, data_y)

# -----------------------------
# Test Prediction
# -----------------------------
test_hours = [[2], [4], [6], [9]]
predictions = model.predict(test_hours)

for i, hours in enumerate(test_hours):
    print(f"Study Hours: {hours[0]}, Prediction: {predictions[i]} (Pass=1, Fail=0)")