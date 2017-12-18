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
        de Intel y del Centro de Diseño de Intel en Guadalajara, podemos pasar a la siguiente sección \
        en la que encontraremos información acerca del Microprocesador, nuestras fábricas \
        y nuestros laboratorios. Vamos!"
fi

# End of File
