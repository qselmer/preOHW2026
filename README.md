# Pre-Hackatón OceanHackWeek 2026

## Objetivo

Practicar Git, GitHub, JupyterLab y Python mediante actividades de análisis de datos reproducibles.

## Actividades

| Actividad | Entrega | Contenido |
| --- | --- | --- |
| [Actividad 1](01_actividad/README.md) | Martes | Cargar y explorar datos CSV |
| [Actividad 2](02_actividad/README.md) | Jueves | Crear gráficos y documentar una función |
| Proyecto final | Viernes | Integrar exploración, visualización, función y conclusiones |

La carpeta del proyecto final aún no está incluida en este repositorio.

## Estructura del repositorio

- `01_actividad/`: notebook y datos CSV de práctica.
- `02_actividad/`: notebook de gráficos y funciones.
- `requirements.txt`: dependencias de Python.
- `scripts/`: instalación del entorno en Windows, macOS y Linux.
- `.devcontainer/`: configuración para GitHub Codespaces.

## Preparación del entorno

Se recomienda Python 3.11.

### 1. Obtener el repositorio

```bash
git clone https://github.com/qselmer/preOHW2026.git
cd preOHW2026
```

Si ya lo descargaste, revisa primero tus cambios con `git status` y luego actualiza con `git pull origin main`.

### 2. Instalar dependencias

En Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup_windows.ps1
```

En macOS o Linux:

```bash
bash scripts/setup_unix.sh
```

Estos scripts crean `.venv`, instalan las dependencias y registran el kernel `Python (preOHW2026)`.

También puedes usar GitHub Codespaces desde `Code > Codespaces`, si está disponible en tu cuenta. Su configuración instala las dependencias del proyecto.

### 3. Abrir JupyterLab

En Windows:

```powershell
.\.venv\Scripts\python.exe -m jupyter lab
```

En macOS o Linux:

```bash
./.venv/bin/python -m jupyter lab
```

Selecciona el kernel `Python (preOHW2026)`. Ejecuta todas las celdas, comprueba que no haya errores y guarda el notebook con sus resultados.

