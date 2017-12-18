#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PUERTOVALLARTA_PID=$$
export PUERTOVALLARTA_PATH=$(readlink -f "$0")
export PUERTOVALLARTA_DIRECTORY=$(dirname "$PUERTOVALLARTA_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_CENTRAL_MAYA_HIGHLANDS_DEVICE
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/PuertoVallartaEnglish.mp3"
else
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/PuertoVallarta.mp3"
fi

# End of File
