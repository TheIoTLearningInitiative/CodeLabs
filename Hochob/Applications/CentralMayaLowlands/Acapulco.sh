#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ACAPULCO_PID=$$
export ACAPULCO_PATH=$(readlink -f "$0")
export ACAPULCO_DIRECTORY=$(dirname "$ACAPULCO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

#Eog.sh $VISITORSCENTER_IMAGE/RP/RPP-May052017-4536.jpg &

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "Future Engineers from ${LOCAL_INSTITUTION}. Welcome to this first hall! We called it: The Beginning. \
    Here we will remember the Mayans, the history of Intel y this Intel Guadalajara Design Center. \
    Enjoy your tour."
else
    Espeak.sh off spanish \
    "Futuros Ingenieros de ${LOCAL_INSTITUTION}. Bienvenidos a esta primer sala, le llamamos: El Inicio. \
    Aqui recordaras a los Mayas, la historia de Intel y de este Centro de Disenio de Intel en Guadalajara. \
    Que disfruten tu recorrido."
fi

Stream.sh "Triki" "1.0" "$ESPEAK_SPEECH_MP3"

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/AcapulcoEnglish.mp3"
else
    Stream.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Acapulco.mp3"
fi

# End of File
