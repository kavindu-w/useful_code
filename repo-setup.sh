#!/usr/bin/env bash
#
# Project scaffold: data/notebooks layout, pinned Python version,
# a venv seeded with a base requirements.txt, and (optional) a
# fresh GitHub repo for this directory.
#
# Usage:
#   chmod +x repo-setup.sh
#   ./repo-setup.sh
#
set -euo pipefail

# ---- Config -----------------------------------------------------------
PYTHON_VERSION="3.13.15"       # managed by pyenv
REPO_NAME="your-repo-name"     # << edit before using the GitHub section below

# ---- Directory scaffold ------------------------------------------------
mkdir -p data/raw data/processed data/final
mkdir -p notebooks

# keep otherwise-empty/ignored data dirs visible in git
touch data/raw/.gitkeep data/processed/.gitkeep data/final/.gitkeep

# ---- Python version pin, resolved through pyenv -------------------------
export PYENV_ROOT="${PYENV_ROOT:-$HOME/.pyenv}"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
pyenv local "$PYTHON_VERSION"

# ---- .gitignore ---------------------------------------------------------
cat > .gitignore <<'EOF'
# venv
venv/
__pycache__/
*.pyc

# notebooks
.ipynb_checkpoints/

# data (raw/processed are usually regenerated, not committed)
data/raw/*
data/processed/*
!data/raw/.gitkeep
!data/processed/.gitkeep

# misc
.env
.DS_Store
EOF

# ---- requirements.txt (seed) --------------------------------------------
cat > requirements.txt <<'EOF'
pandas
ipykernel
EOF

# ---- venv: create, install, freeze back into requirements.txt ----------
if [ ! -d venv ]; then
    python3 -m venv venv
fi

# shellcheck disable=SC1091
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip list --format=freeze > requirements.txt
deactivate

echo "Scaffold complete: data/{raw,processed,final}, notebooks/, .python-version, .gitignore, requirements.txt, venv/"

# ---- Git + GitHub (uncomment to actually run) ---------------------------
# This pushes THIS directory as its own private repo, decoupled from any
# outer git repo it may be nested inside.
#
# git init
# git add .
# git commit -m "Initial commit"
# brew install gh                 # skip if already installed
# gh auth login                   # skip if already authenticated
# gh repo create "$REPO_NAME" --private --source=. --remote=origin --push

# ---- Alternative: repo already created manually on github.com ----------
# git remote add origin "https://github.com/YOUR_USERNAME/${REPO_NAME}.git"
# git branch -M main
# git push -u origin main
