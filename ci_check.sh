#!/bin/bash

# Local CI-style check script

echo "[1] Installing dependencies..."
pip install -r requirements.txt

echo "[2] Running flake8 lint check..."
flake8 app.py test_app.py
if [ $? -ne 0 ]; then
    echo "X Linting failed!"
    exit 1

fi

echo "[3] Running pytest tests..."
pytest test_app.py
if [ $? -ne 0 ]; then
    echo "❌ Tests failed!"
    exit 1
fi

echo "✅ All checks passed!"
