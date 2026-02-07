#!/usr/bin/env bash

echo "Setting up AI SOC Agent environment..."

# Check Python
if ! command -v python3 &> /dev/null; then
  echo "Python 3 is not installed."
  exit 1
fi

# Create virtual environment
python3 -m venv venv

# Activate venv
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

echo "Setup complete!"
echo "Activate the environment with: source venv/bin/activate"
