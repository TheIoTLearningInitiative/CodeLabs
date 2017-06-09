#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export OJODELIEBRE_PID=$$
export OJODELIEBRE_PATH=$(readlink -f "$0")
export OJODELIEBRE_DIRECTORY=$(dirname "$OJODELIEBRE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Espeak.sh off spanish \
    "Futuros Ingenieros. Ya vimos la importancia de nuestras Fabricas y Laboratorios. Ahora entraremos a una seccion \
    que nos permite jugar y conocer de cerca la tecnología. Siganme."

Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"

Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/OjoDeLiebre.mp3"

kill -- -$(ps -o pgid=$OJODELIEBRE_PID | grep -o '[0-9]*')

# End of File
