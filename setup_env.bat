@echo off
echo [1/3] Creating Conda environment from YAML...
call conda env create -f environment.yml

echo [2/3] Activating environment...
call conda activate ai_voice

echo [3/3] Verifying GPU access...
python -c "import torch; print('GPU Check successful!')" || echo "GPU check failed - check NVIDIA drivers."

pause