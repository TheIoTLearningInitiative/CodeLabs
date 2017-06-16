#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MAZATLAN_PID=$$
export MAZATLAN_PATH=$(readlink -f "$0")
export MAZATLAN_DIRECTORY=$(dirname "$CAMPECHE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "Future Engineers. You know more about Intel, now let's get into the next hall\
    where we will find information about our Microproccesors, our Fabs and Laboratories. \
    Enjoy your tour."
else
    Espeak.sh off spanish \
    "Futuros Ingenieros. Ahora que saben mas acerca de Intel podemos pasar a la siguiente seccion \
    en la que encontraremos informacion acerca del Microprocesador, nuestras Fabricas y nuestros Laboratorios. Acompanienme."
fi

Stream.sh "Juum" "1.0" "$ESPEAK_SPEECH_MP3"

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/MazatlanEnglish.mp3"
else
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Mazatlan.mp3"
fi

# End of File