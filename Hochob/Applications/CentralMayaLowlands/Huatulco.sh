#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HUATULCO_PID=$$
export HUATULCO_PATH=$(readlink -f "$0")
export HUATULCO_DIRECTORY=$(dirname "$HUATULCO_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="Triki"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="pico2wave"
LOCAL_VOLUME="1.0"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/HuatulcoEnglish.mp3"
else
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/Huatulco.mp3"
fi

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        "${LOCAL_INSTITUTION}, you know more about the Mayans, Intel and Intel Guadalajara Design Center, \
         now let's get into the next hall where we will find information about our Microproccesors, \
         our Fabs and Laboratories. Let's go."
else
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        "${LOCAL_INSTITUTION}, ahora que saben más acerca de los Mayas, \
        de Intel y del Centro de Diseño de Intel en Guadalajara, podemos pasar a la siguiente seccion \
        en la que encontraremos informacion acerca del Microprocesador, nuestras Fabricas \
        y nuestros Laboratorios. Vamos."
fi

# End of File
