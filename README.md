# Semana Pre-Hackatón | OceanHackWeek 2026

## Objetivo
Familiarizarse con Git/GitHub, JupyterHub/JupyterLab, Python para análisis de datos y trabajo reproducible.

## Actividades

| Fecha de entrega | Carpeta | Requisitos |
|---|---|---|
| Martes | `01_actividad/` | Cargar CSV, inspeccionar filas y describir variables |
| Jueves | `02_actividad/` | Crear gráficos y documentar una función |
| Viernes | `03_proyecto_final/` | Mini proyecto con datos, exploración, visualización, función y conclusiones |

## Estructura

```text
preOHW2026/
├── README.md
├── requirements.txt
├── .devcontainer/devcontainer.json
├── scripts/setup_windows.ps1
├── scripts/setup_unix.sh
├── .gitignore
├── 01_actividad/
│   ├── README.md
│   ├── datos/datos_ejemplo.csv
│   └── notebook.ipynb
├── 02_actividad/
│   ├── README.md
│   └── notebook.ipynb
└── 03_proyecto_final/
    ├── README.md
    ├── datos/datos_ejemplo.csv
    ├── figuras/.gitkeep
    └── notebook.ipynb
```

## Entorno reproducible de Python

**Versión recomendada: Python 3.11.** El archivo [`requirements.txt`](requirements.txt) declara los paquetes utilizados por los notebooks. Son rangos compatibles, no un entorno congelado exactamente: para reproducibilidad estricta también es necesario fijar las versiones efectivamente utilizadas y probarlas en el sistema de destino.

### 1. Descargar o actualizar el repositorio

```bash
git clone https://github.com/qselmer/preOHW2026.git
cd preOHW2026
```

Si ya tienes el repositorio en tu computadora, entra a su carpeta y usa `git pull origin main` en vez de clonarlo de nuevo. **Antes de hacer pull, guarda y comprueba tus cambios locales con `git status` para no generar conflictos con tus notebooks.**

### Opción A — GitHub Codespaces

1. En el repositorio, selecciona **Code → Codespaces → Create codespace on main** (si tu cuenta tiene acceso).
2. La configuración `.devcontainer/devcontainer.json` instala automáticamente las dependencias de `requirements.txt` cuando se crea el Codespace.
3. Abre el notebook y selecciona el kernel **Python (preOHW2026)**.
4. Ejecuta todas las celdas y guarda los outputs antes de hacer commit.

**Nota:** Codespaces es un entorno remoto sujeto a cuotas y posibles cargos; visualizar un notebook desde la web de GitHub no lo ejecuta.

### Opción B — Entorno local

Desde la raíz del repositorio, en **Windows PowerShell**:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup_windows.ps1
```

En **macOS/Linux**:

```bash
bash scripts/setup_unix.sh
```

Los scripts crean `.venv`, instalan las dependencias, verifican la instalación y registran el kernel **Python (preOHW2026)**. La carpeta `.venv` se excluye de Git.

### 2. Creación manual (alternativa)



En **Windows PowerShell**:

```powershell
py -3.11 -m venv .venv
.\.venv\Scripts\python.exe -m pip install --upgrade pip
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m pip check
```

No necesitas activar el entorno si usas su ejecutable directamente; así evitas problemas con la política de ejecución de PowerShell.

En **macOS/Linux**:

```bash
python3.11 -m venv .venv
./.venv/bin/python -m pip install --upgrade pip
./.venv/bin/python -m pip install -r requirements.txt
./.venv/bin/python -m pip check
```

Si Python 3.11 no está instalado, instálalo primero. La instalación requiere acceso a Internet la primera vez, salvo que ya dispongas de los paquetes.

### 3. Iniciar JupyterLab local con el entorno correcto

En Windows:

```powershell
.\.venv\Scripts\python.exe -m jupyter lab
```

En macOS/Linux:

```bash
./.venv/bin/python -m jupyter lab
```

En JupyterLab, usa el kernel **Python 3** iniciado desde este entorno. En caso de trabajar desde otra instalación de JupyterLab, registra el kernel explícitamente:

Windows:
```powershell
.\.venv\Scripts\python.exe -m ipykernel install --user --name preOHW2026 --display-name "Python (preOHW2026)"
```

macOS/Linux:
```bash
./.venv/bin/python -m ipykernel install --user --name preOHW2026 --display-name "Python (preOHW2026)"
```

Después selecciona **Kernel → Change Kernel → Python (preOHW2026)**.

### 4. Ejecutar, guardar y publicar los resultados

Abre cada notebook desde la carpeta del repositorio, selecciona **Restart Kernel and Run All Cells**, verifica que no haya errores y guarda con **Ctrl+S** (en macOS, **Cmd+S**). Los resultados de las celdas deben permanecer guardados dentro del archivo `.ipynb`.

Los commits de los notebooks ejecutados corresponden al participante y se realizan **después** de probar localmente. Ejemplo:

```bash
git add 02_actividad/notebook.ipynb
git commit -m "Actividad 2: notebook ejecutado con outputs"
git push origin main
```

### Diagnóstico de problemas de dependencias

Si aparece `ModuleNotFoundError`, comprueba en una celda qué Python está ejecutando Jupyter:

```python
import sys
print(sys.executable)
```

La ruta debe apuntar al Python de `.venv` del proyecto. Instala siempre los paquetes en ese mismo entorno; instalar un paquete en otro Python no lo hace disponible automáticamente en el kernel seleccionado.

Los entornos virtuales locales quedan fuera de Git mediante `.gitignore`. No se debe subir la carpeta `.venv/`.

## Notas sobre los datos

Los CSV incluidos son **simulados exclusivamente para práctica**. El proyecto final debe actualizarse con el conjunto proporcionado por la organización cuando esté disponible. La celda inicial de cada notebook solo verifica dependencias y no instala en kernels protegidos por `uv`. El archivo de dependencias facilita ejecutar los notebooks, pero **no sustituye la prueba de ejecución local ni garantiza que cualquier equipo funcione sin ajustes**.
