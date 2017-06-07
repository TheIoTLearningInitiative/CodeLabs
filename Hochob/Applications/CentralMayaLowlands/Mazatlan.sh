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
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/MazatlanEnglish.mp3"
else
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Mazatlan.mp3"
fi

kill -- -$(ps -o pgid=$MAZATLAN_PID | grep -o '[0-9]*')

# End of File
