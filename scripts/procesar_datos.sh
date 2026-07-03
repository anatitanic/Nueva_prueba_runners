#!/bin/bash

# ============================================
# Script Simple: Procesar Datos
# ============================================

echo "🚀 Iniciando script de procesamiento..."
echo "Fecha: $(date)"
echo ""

# Variables
ENTRADA="data/entrada/datos.txt"
SALIDA="data/salida/resultado_$(date +%Y%m%d_%H%M%S).txt"

# Crear directorio de salida si no existe
mkdir -p data/salida

# Validar que el archivo de entrada existe
if [ ! -f "$ENTRADA" ]; then
    echo "❌ ERROR: Archivo de entrada no encontrado: $ENTRADA"
    exit 1
fi

echo "📖 Leyendo archivo: $ENTRADA"
echo ""

# Procesar el archivo
echo "⏳ Procesando datos..."
echo ""

# Crear archivo de salida
cat > "$SALIDA" <<EOF
RESULTADO DEL PROCESAMIENTO
============================
Fecha: $(date)
Hora: $(date +%H:%M:%S)

DATOS DE ENTRADA:
$(cat $ENTRADA)

ESTADÍSTICAS:
- Líneas: $(wc -l < $ENTRADA)
- Caracteres: $(wc -c < $ENTRADA)
- Palabras: $(wc -w < $ENTRADA)

PROCESAMIENTO COMPLETADO: ✅
EOF

echo "✅ Archivo generado: $SALIDA"
echo ""
echo "📊 Contenido del resultado:"
echo "---"
cat "$SALIDA"
echo "---"
echo ""
echo "✅ Script completado exitosamente"

