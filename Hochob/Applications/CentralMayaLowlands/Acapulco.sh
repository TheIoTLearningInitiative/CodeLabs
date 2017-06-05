#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ACAPULCO_PID=$$
export ACAPULCO_PATH=$(readlink -f "$0")
export ACAPULCO_DIRECTORY=$(dirname "$ACAPULCO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream2Chromecast.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/AcapulcoEnglish.wav"
elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
    Stream2Chromecast.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Acapulco.mp3"
fi

kill -- -$(ps -o pgid=$ACAPULCO_PID | grep -o '[0-9]*')

# End of File
