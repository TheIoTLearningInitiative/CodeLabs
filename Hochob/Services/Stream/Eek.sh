#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export EEK_PID=$$

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
    SpeechSynthetizer.sh off espeak english "${LOCAL_TEXT}"
elif [ "$LOCAL_LANGUAGE" = "english" ] && [ "$LOCAL_CHARACTER" = "tt" ]; then
    SpeechSynthetizer.sh off voicerss english "${LOCAL_TEXT}"
elif [ "$LOCAL_LANGUAGE" = "spanish" ] && [ "$LOCAL_CHARACTER" = "robot" ]; then
    SpeechSynthetizer.sh off espeak spanish "${LOCAL_TEXT}"
elif [ "$LOCAL_LANGUAGE" = "spanish" ] && [ "$LOCAL_CHARACTER" = "tt" ]; then
    SpeechSynthetizer.sh off voicerss spanish "${LOCAL_TEXT}"
fi

Stream.sh "Eek'" "1.0" "$SPEECH_MP3"

# End of File
