# Ejecutar desde cualquier carpeta: powershell -ExecutionPolicy Bypass -File scripts/setup_windows.ps1
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
Set-Location $root
if (Get-Command py -ErrorAction SilentlyContinue) {
    & py -3.11 -m venv .venv
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
    & python -m venv .venv
} else {
    throw "Instala Python 3.11 y vuelve a ejecutar este script."
}
if ($LASTEXITCODE -ne 0) { throw "No se pudo crear el entorno .venv (se recomienda Python 3.11)." }
$python = Join-Path $root ".venv\Scripts\python.exe"
& $python -m pip install --upgrade pip
if ($LASTEXITCODE -ne 0) { throw "Error actualizando pip" }
& $python -m pip install -r (Join-Path $root "requirements.txt")
if ($LASTEXITCODE -ne 0) { throw "Error instalando dependencias" }
& $python -m pip check
if ($LASTEXITCODE -ne 0) { throw "Dependencias inconsistentes" }
& $python -m ipykernel install --user --name preOHW2026 --display-name "Python (preOHW2026)"
if ($LASTEXITCODE -ne 0) { throw "No se pudo registrar el kernel" }
Write-Host "Entorno creado. En VS Code selecciona kernel: Python (preOHW2026)."
