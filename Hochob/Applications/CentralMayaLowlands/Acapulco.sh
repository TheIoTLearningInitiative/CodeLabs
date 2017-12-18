#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ACAPULCO_PID=$$
export ACAPULCO_PATH=$(readlink -f "$0")
export ACAPULCO_DIRECTORY=$(dirname "$ACAPULCO_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_CENTRAL_MAYA_LOWLANDS_DEVICE
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_CENTRAL_MAYA_LOWLANDS_TTS_ENGINE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        "Future Engineers from ${LOCAL_INSTITUTION}. Welcome to this first hall! We called it: The Beginning. \
         Here we will remember the Mayans, the history of Intel y this Intel Guadalajara Design Center. \
         Enjoy your tour."
else
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        "Futuros Ingenieros de ${LOCAL_INSTITUTION}. Bienvenidos a esta primer sala, le llamamos: El Inicio. \
         Aquí  recordaras a los Mayas, la historia de Intel y de este Centro de Diseño de Intel en Guadalajara. \
         Que disfruten su recorrido."
fi

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/AcapulcoEnglish.mp3"
else
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/Acapulco.mp3"
fi

# End of File
