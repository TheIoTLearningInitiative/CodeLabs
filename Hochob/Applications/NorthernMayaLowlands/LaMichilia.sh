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
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_VOLUME=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE_VOLUME
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_TTS_ENGINE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

StreamAudio.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/LaMichilia.mp3"

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
