#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CANCUN_PID=$$
export CANCUN_PATH=$(readlink -f "$0")
export CANCUN_DIRECTORY=$(dirname "$CANCUN_PATH")

LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamAudio.sh "$LOCAL_DEVICE" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/CancunEnglish.mp3"
else
    StreamAudio.sh "$LOCAL_DEVICE" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Cancun.mp3"
fi

# End of File
