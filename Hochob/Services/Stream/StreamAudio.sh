#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export STREAMAUDIO_PID=$$

LOCAL_DEVICE="$2"
LOCAL_LANGUAGE="$2"
LOCAL_CHARACTER="$3"
LOCAL_TEXT="$4"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_LANGUAGE" = "english" ] && [ "$LOCAL_CHARACTER" = "robot" ]; then
    Espeak.sh off english "${LOCAL_TEXT}"
elif [ "$LOCAL_LANGUAGE" = "english" ] && [ "$LOCAL_CHARACTER" = "tt" ]; then
    VoiceRss.sh off english "${LOCAL_TEXT}"
elif [ "$LOCAL_LANGUAGE" = "spanish" ] && [ "$LOCAL_CHARACTER" = "robot" ]; then
    Espeak.sh off spanish "${LOCAL_TEXT}"
elif [ "$LOCAL_LANGUAGE" = "spanish" ] && [ "$LOCAL_CHARACTER" = "tt" ]; then
    VoiceRss.sh off spanish "${LOCAL_TEXT}"
fi

Stream.sh $LOCAL_DEVICE 1.0 $SPEECH_MP3

# End of File
