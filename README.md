# POC - Script Linux con GitHub Actions

Prueba de concepto simple: Script Linux ejecutado automáticamente con GitHub Actions.

## Descripción

Este proyecto demuestra:
- ✅ Crear un script Linux simple
- ✅ Ejecutarlo con GitHub Actions
- ✅ Guardar resultados como artefactos
- ✅ Programar ejecuciones automáticas

## Estructura
Nueva_prueba_runners/
├── .github/
│ └── workflows/
│ └── ejecutar-script.yml # Workflow de GitHub Actions
├── scripts/
│ └── procesar_datos.sh # Script principal
├── data/
│ ├── entrada/
│ │ └── datos.txt # Datos de entrada
│ └── salida/ # Resultados generados
└── README.md

## Cómo Funciona

1. **Script:** `scripts/procesar_datos.sh`
   - Lee archivo de entrada: `data/entrada/datos.txt`
   - Procesa los datos
   - Genera archivo de salida: `data/salida/resultado_*.txt`

2. **Workflow:** `.github/workflows/ejecutar-script.yml`
   - Se ejecuta automáticamente cada día a las 10:00 AM (UTC)
   - O manualmente desde GitHub Actions
   - Guarda el resultado como artefacto

## Ejecución Manual

### Opción 1: Desde GitHub

1. Ve a: `Actions` → `Ejecutar Script Linux`
2. Click en `Run workflow`
3. Click en `Run workflow` (confirmar)
4. Esperar a que termine
5. Ver resultado en `Artifacts`

### Opción 2: Desde Codespaces

1. Abrir Codespace
2. Ejecutar: `./scripts/procesar_datos.sh`
3. Ver resultado en `data/salida/`

## Resultados

Los archivos generados se guardan en:
- **Ubicación:** `data/salida/resultado_YYYYMMDD_HHMMSS.txt`
- **Disponibilidad:** 30 días en GitHub Actions

## Próximos Pasos

- [ ] Modificar el script para tu caso de uso
- [ ] Agregar más lógica de procesamiento
- [ ] Configurar notificaciones
- [ ] Agregar validaciones
- [ ] Escalar a producción

## Autor
Verónica

## Licencia
MIT
