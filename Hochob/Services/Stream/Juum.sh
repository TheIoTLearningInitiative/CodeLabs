#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export JUUM_PID=$$

LOCAL_LANGUAGE="$1"
LOCAL_CHARACTER="$2"
LOCAL_TEXT="$3"

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

Stream.sh "Juum" "1.0" "$SPEECH_MP3"

exit 0

if [ $# -eq 1 ]
then
    echo "Tbd"
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
