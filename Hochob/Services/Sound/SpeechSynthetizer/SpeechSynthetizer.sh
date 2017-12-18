#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SPEECHSYNTHETIZER_PID=$$

LOCAL_PLAY="$1"
LOCAL_ENGINE="$2"
LOCAL_LANGUAGE="$3"
LOCAL_TEXT="$4"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 4 ]; then

    if [ "$LOCAL_ENGINE" = "espeak" ]; then
        Espeak.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"
    elif [ "$LOCAL_ENGINE" = "voicerss" ]; then
        VoiceRss.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"
    elif [ "$LOCAL_ENGINE" = "pico2wave" ]; then
        Pico2Wave.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"
    elif [ "$LOCAL_ENGINE" = "festival" ]; then
        Festival.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"        
    fi

    if [ "$LOCAL_PLAY" = "on" ]; then
        Aplay.sh $SPEECH
    fi

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
