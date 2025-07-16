#!/bin/bash

# Ruta base absoluta
BASE_DIR="$(dirname "$(realpath "$0")")"

# Exportar variables del entorno
export WINEPREFIX="$BASE_DIR/wineprefixes/universal"
export PATH="$BASE_DIR/bin/wine/bin:$PATH"
export DXVK_DLL_PATH="$BASE_DIR/bin/dxvk/x64"
export DXVK_LOG_LEVEL=none
export DXVK_HUD=0

# Mostrar mensaje
if command -v zenity >/dev/null 2>&1; then
  zenity --info --title="Entorno activado" --width=300 --text="✅ Entorno cargado correctamente.\n\nPodés ejecutar tus juegos desde esta terminal."
else
  echo "✅ Entorno cargado correctamente. Podés ejecutar tus juegos desde esta terminal."
fi

# Lanzar terminal con entorno activo
gnome-terminal -- bash -c "cd '$BASE_DIR'; echo '✅ Entorno cargado. Ejecutá tus juegos desde aquí.'; exec bash"

