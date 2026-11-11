#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if command -v python3.11 >/dev/null 2>&1; then
  PYTHON=python3.11
else
  PYTHON=python3
fi
"$PYTHON" -m venv .venv
.venv/bin/python -m pip install --upgrade pip
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -m pip check
.venv/bin/python -m ipykernel install --user --name preOHW2026 --display-name "Python (preOHW2026)"
echo "Entorno creado. Selecciona el kernel Python (preOHW2026)."
