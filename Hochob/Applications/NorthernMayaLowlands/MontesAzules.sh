#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MONTESAZULES_PID=$$
export MONTESAZULES_PATH=$(readlink -f "$0")
export MONTESAZULES_DIRECTORY=$(dirname "$MONTESAZULES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`

Espeak.sh off spanish \
    "Futuros Ingenieros de ${LOCAL_INSTITUTION}. Ya vimos la importancia de nuestras Fabricas y Laboratorios. Ahora entraremos a una seccion \
    que nos permite jugar y conocer de cerca la tecnología. Siganme."

Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"

Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/MontesAzules.mp3"

kill -- -$(ps -o pgid=$MONTESAZULES_PID | grep -o '[0-9]*')

# End of File
