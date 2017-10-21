#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export STREAMAUDIO_PID=$$

LOCAL_DEVICE="$1"
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

if [ "$LOCAL_DEVICE" = "Amikoo" ] && [ "$LOCAL_LANGUAGE" = "english" ]; then
    Robot.sh lupe/say \
    "${LOCAL_TEXT}"
elif [ "$LOCAL_DEVICE" = "Amikoo" ] && [ "$LOCAL_LANGUAGE" = "spanish" ]; then
    Robot.sh lupe/decir \
    "${LOCAL_TEXT}"
else
    if [ "$LOCAL_LANGUAGE" = "english" ] && [ "$LOCAL_CHARACTER" = "robot" ]; then
        SpeechSynthetizer.sh off espeak english "${LOCAL_TEXT}"
    elif [ "$LOCAL_LANGUAGE" = "english" ] && [ "$LOCAL_CHARACTER" = "tt" ]; then
        SpeechSynthetizer.sh off voicerss english "${LOCAL_TEXT}"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ] && [ "$LOCAL_CHARACTER" = "robot" ]; then
        SpeechSynthetizer.sh off espeak spanish "${LOCAL_TEXT}"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ] && [ "$LOCAL_CHARACTER" = "tt" ]; then
        SpeechSynthetizer.sh off voicerss spanish "${LOCAL_TEXT}"
    fi

    Stream.sh $LOCAL_DEVICE 1.0 $SPEECH_MP3
fi

# End of File
