#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VERACRUZ_PID=$$
export VERACRUZ_PATH=$(readlink -f "$0")
export VERACRUZ_DIRECTORY=$(dirname "$VERACRUZ_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Espeak.sh off spanish \
"Futuros Ingenieros! Bienvenidos a esta primer sala, le llamamos:" \
"El Inicio" \
"Aqui recordaras a los Mayas, la historia de Intel e Intel Centro de Disenio en Guadalajara"

Stream2Chromecast.sh "Juum" "1.0" "$ESPEAK_SPEECH_MP3"

kill -- -$(ps -o pgid=$VERACRUZ_PID | grep -o '[0-9]*')

# End of File
