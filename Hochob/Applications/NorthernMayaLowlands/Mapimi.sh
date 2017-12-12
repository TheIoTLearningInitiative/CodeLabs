#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MAPIMI_PID=$$
export MAPIMI_NAME="Mapimi Application"
export MAPIMI_PATH=$(readlink -f "$0")
export MAPIMI_DIRECTORY=$(dirname "$MAPIMI_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="Eek'"
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="robot"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="pico2wave"

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        "It was a great pleasure to meet you and have you here at Intel Guadalajara. \
         Come back soon future Engineers."
else
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        "Me da mucho gusto conocerlos y que hayan venido a Intel Guadalajara. \
         Regresen pronto futuras y futuros Ingenieros"
fi

# End of File
