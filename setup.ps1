Write-Host "Setting up AI SOC Agent environment..."

# Check Python
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "Python is not installed or not in PATH."
    exit 1
}

# Create virtual environment
python -m venv venv

# Activate virtual environment
.\venv\Scripts\Activate.ps1

# Upgrade pip
python -m pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

Write-Host "Setup complete!"
Write-Host "Activate later with: .\venv\Scripts\Activate.ps1"
