#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MONTESAZULES_PID=$$
export MONTESAZULES_NAME="MontesAzules"
export MONTESAZULES_PATH=$(readlink -f "$0")
export MONTESAZULES_DIRECTORY=$(dirname "$MONTESAZULES_PATH")

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

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
    " \
     Future Mathematicians. We have seen the importance of our Fabs and Labs. \
     Now, we will get into a section where we can play and understand closely the technology.
    "
else
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
    " \
     Futuras y futuros Matemáticos. Ya vimos la importancia de nuestras Fábricas y Laboratorios. \
     Ahora entraremos a una sección que nos permite jugar y conocer de cerca la tecnología. \
    "
fi

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    echo "Tbd"
else
    StreamAudio.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/MontesAzules.mp3"
fi

#kill -- -$(ps -o pgid=$MONTESAZULES_PID | grep -o '[0-9]*')

# End of File
