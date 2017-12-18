#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VERACRUZ_PID=$$
export VERACRUZ_PATH=$(readlink -f "$0")
export VERACRUZ_DIRECTORY=$(dirname "$VERACRUZ_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_CENTRAL_MAYA_HIGHLANDS_DEVICE
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

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
    " \
     Hi There!. \
    "
else
    StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
    " \
     Hola a todos!. \
    "
fi

# kill -- -$(ps -o pgid=$VERACRUZ_PID | grep -o '[0-9]*')

# End of File
