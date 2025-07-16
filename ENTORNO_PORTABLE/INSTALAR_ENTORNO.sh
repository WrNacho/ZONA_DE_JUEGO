#!/bin/bash

# Script de instalación del entorno
BASE_DIR="$(dirname "$(realpath "$0")")"

chmod +x "$BASE_DIR/ACTIVAR_ENTORNO.sh"
chmod +x "$BASE_DIR/LANZAR_ENTORNO.sh"

# Mostrar mensaje
if command -v zenity >/dev/null 2>&1; then
  zenity --info --width=300 --title="Información" --text="✅ Entorno instalado correctamente.\n\nYa podés usarlo desde los scripts."
else
  echo "✅ Entorno instalado correctamente. Ya podés usarlo desde los scripts."
fi

