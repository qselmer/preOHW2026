# Semana Pre-Hackatón | OceanHackWeek 2026

## Objetivo
Familiarizarse con Git/GitHub, JupyterHub/JupyterLab, Python o R, y análisis reproducible y colaborativo. La participación en el hackatón está condicionada a las entregas y evaluación de esta semana.

## Entregas

| Fecha límite | Carpeta | Actividad | Evidencia Git |
|---|---|---|---|
| Martes | `01_exploracion_datos/` | Leer CSV, inspeccionar filas, describir los datos | Primer commit |
| Jueves | `02_graficos_funciones/` | Gráficos y una función sencilla | Segundo commit |
| Viernes | `03_proyecto_final/` | Mini proyecto completo con conclusiones | Commit final |

La carpeta `revision_tutores/` contiene la guía de revisión y una plantilla de evaluación. La corrección individual se comunicará por Discord.

## Forma de entrega
1. Crear un repositorio personal en GitHub a partir de esta estructura (o descargarla y subirla).
2. Trabajar en **Python o R**, no es obligatorio utilizar ambos lenguajes.
3. Completar el notebook correspondiente a cada entrega, ejecutar todas sus celdas y guardar los resultados.
4. Registrar cada entrega con un commit distinguible y subir los cambios (`git push`).
5. Compartir el enlace al repositorio y el SHA o enlace al commit de cada entrega con el tutor por el canal indicado.
6. No modificar los archivos de la entrega anterior después del cierre sin comunicarlo al tutor; cualquier corrección debe hacerse en un commit nuevo.

## Requisitos mínimos
- Tres actividades entregadas (martes, jueves y viernes).
- Al menos un commit de GitHub (aunque las entregas requieren evidencias de commits sucesivos).
- Nota final de **60/100 o más**.

## Rúbrica
- Exploración: 20 puntos.
- Función documentada en Python o R: 30 puntos.
- Proyecto final: 50 puntos.

### Recursos
- [Instalaciones, Git y Markdown](https://oceanhackweek.org/ohw23/tutorials_getting_started.html)
- [Python](https://oceanhackweek-e.org/primeros-pasos/#python)
- [R](https://oceanhackweek-e.org/primeros-pasos/#r)

## Organización
```text
pre-hackaton-oceanhackweek-2026/
├── README.md
├── 01_exploracion_datos/
│   ├── README.md
│   ├── datos/datos_ejemplo.csv
│   └── notebook.ipynb
├── 02_graficos_funciones/
│   ├── README.md
│   └── notebook.ipynb
├── 03_proyecto_final/
│   ├── README.md
│   ├── datos/README.md
│   ├── figuras/.gitkeep
│   └── notebook.ipynb
└── revision_tutores/
    ├── README.md
    └── rubrica_revision.csv
```

**Nota:** El archivo CSV de la primera actividad es un ejemplo didáctico; para el proyecto final se utilizará el conjunto de datos proporcionado por la organización. Los notebooks son plantillas por completar, no entregas ejecutadas.
