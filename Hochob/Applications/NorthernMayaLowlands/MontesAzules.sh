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
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    ""
else
    Espeak.sh off spanish \
    "Futuros Matemáticos de ${LOCAL_INSTITUTION}. Ya vimos la importancia de nuestras Fábricas y Laboratorios. \
    Ahora entraremos a una sección que nos permite jugar y conocer de cerca la tecnología. Siganme."
fi

Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    echo "Tbd"
else
    Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/MontesAzules.mp3"
fi

kill -- -$(ps -o pgid=$MONTESAZULES_PID | grep -o '[0-9]*')

# End of File
