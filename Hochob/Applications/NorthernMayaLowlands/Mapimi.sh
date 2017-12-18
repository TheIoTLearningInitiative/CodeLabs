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
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        " \
         It was a great pleasure to meet you and have you here at Intel Guadalajara. \
         Come back soon future Engineers. \
        "
else
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
        " \
         Nos dio mucho gusto conocerlas, conocerlos y que hayan venido a Intel Guadalajara. \
         Fue un placer recibirlos en nuestras instalaciones y esperamos verlos de nuevo!. \
        "
fi

# End of File
