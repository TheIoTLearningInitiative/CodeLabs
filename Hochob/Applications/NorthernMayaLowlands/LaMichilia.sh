#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export LAMICHILIA_PID=$$
export LAMICHILIA_PATH=$(readlink -f "$0")
export LAMICHILIA_DIRECTORY=$(dirname "$LAMICHILIA_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="Eek'"
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="festival"

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
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
    " \
    "
else
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
    " \
     Intel no solo se queda en la tierra, es tal el alcance del Microprocesador que puede \
     estar en el universo, por ejemplo, ha trabajado con la NASA para crear cohetes y vehiculos \
     no tripulados. Veamos el siguiente video. \
    "
fi

#kill -- -$(ps -o pgid=$LAMICHILIA_PID | grep -o '[0-9]*')

# End of File
