#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export LAMICHILIA_PID=$$
export LAMICHILIA_PATH=$(readlink -f "$0")
export LAMICHILIA_DIRECTORY=$(dirname "$LAMICHILIA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

#Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/LaMichilia.mp3"

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh off espeak english \
    "To be written"
else
    SpeechSynthetizer.sh off espeak spanish \
    "Intel no solo se queda en la tierra, es tal el alcance del Microprocesador que puede \
     estar en el universo, por ejemplo, ha trabajado con la NASA para crear cohetes y vehiculos \
     no tripulados. Veamos el siguiente video."
fi

Stream.sh "Eek'" "1.0" "$SPEECH_MP3"

#kill -- -$(ps -o pgid=$LAMICHILIA_PID | grep -o '[0-9]*')

# End of File
