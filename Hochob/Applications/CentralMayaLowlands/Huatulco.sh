#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HUATULCO_PID=$$
export HUATULCO_PATH=$(readlink -f "$0")
export HUATULCO_DIRECTORY=$(dirname "$HUATULCO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/HuatulcoEnglish.mp3"
else
    Stream.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Huatulco.mp3"
fi

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "${LOCAL_INSTITUTION}, you know more about the Mayans, Intel and Intel Guadalajara Design Center, \
    now let's get into the next hall where we will find information about our Microproccesors, \
    our Fabs and Laboratories. Let's go."
else
    Espeak.sh off spanish \
    "${LOCAL_INSTITUTION}, ahora que saben más acerca de los Mayas, \
    Intel e Intel Guadalajara Centro de Diseño podemos pasar a la siguiente seccion \
    en la que encontraremos informacion acerca del Microprocesador, nuestras Fabricas \
    y nuestros Laboratorios. Vamos."
fi

Stream.sh "Triki" "1.0" "$ESPEAK_SPEECH_MP3"

# End of File
