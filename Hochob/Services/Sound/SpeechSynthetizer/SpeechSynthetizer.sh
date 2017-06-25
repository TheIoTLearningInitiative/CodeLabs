#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SPEECHSYNTHETIZER_PID=$$

LOCAL_ENGINE="$1"
LOCAL_PLAY="$2"
LOCAL_LANGUAGE="$3"
LOCAL_TEXT="$4"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 4 ]
then
    if [ "$LOCAL_ENGINE" = "espeak" ]; then
        Espeak.sh $LOCAL_PLAY $LOCAL_LANGUAGE $LOCAL_TEXT
    elif [ "$LOCAL_LANGUAGE" = "voicerss" ]; then
        VoiceRss.sh $LOCAL_PLAY $LOCAL_LANGUAGE $LOCAL_TEXT
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
