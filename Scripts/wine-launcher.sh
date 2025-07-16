#!/bin/bash

# Ruta base del entorno
BASE="$HOME/ZONA_DE_JUEGO"
PREFIX="$BASE/wineprefixes/SkyrimLE"
WINE="$BASE/bin/wine"
WINETRICKS="$BASE/bin/winetricks"
DXVK_PATH="$BASE/DXVK/portable"

# Preparamos variables
export WINEPREFIX="$PREFIX"
export WINEDLLOVERRIDES="d3d11=n;dxgi=n"  # Por defecto: no forzar DXVK, se puede cambiar

# Agregar DXVK si querés usarlo
setup_dxvk() {
  cp -v "$DXVK_PATH/x64/"*.dll "$WINEPREFIX/drive_c/windows/system32/" 2>/dev/null
  cp -v "$DXVK_PATH/x32/"*.dll "$WINEPREFIX/drive_c/windows/syswow64/" 2>/dev/null
}

# Si querés aplicar DXVK, descomentá esta línea:
# setup_dxvk

# Ejecutar Wine con el programa que quieras
"$WINE" "$@"
