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
    ""
else
    Espeak.sh off spanish \
    ""
fi

Stream.sh "Juum" "1.0" "$ESPEAK_SPEECH_MP3"

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/MazatlanEnglish.mp3"
else
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Mazatlan.mp3"
fi

# End of File
