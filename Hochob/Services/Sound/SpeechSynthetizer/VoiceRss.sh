#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VOICERSS_PID=$$
export VOICERSS_BINARY=VoiceRss.py
export VOICERSS_ARGUMENTS="--stdout"
export VOICERSS_PLAY="-w"
export VOICERSS_LANGUAGE="-ven+m5"
export VOICERSS_INPUT="No input has been provided"
export VOICERSS_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS
export VOICERSS_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_SPEECH

LOCAL_PLAY="$1"
LOCAL_LANGUAGE="$2"
LOCAL_TEXT="$3"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ]
then
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        export VOICERSS_LANGUAGE="-ven+m5"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export VOICERSS_LANGUAGE="-v es-la -a 200"
    fi

    export VOICERSS_INPUT="$LOCAL_TEXT"

    if [ "$LOCAL_PLAY" = "on" ]; then
       $VOICERSS_BINARY $VOICERSS_LANGUAGE $VOICERSS_ARGUMENTS "$VOICERSS_INPUT" | tee $VOICERSS_SPEECH | aplay -
    elif [ "$LOCAL_PLAY" = "off" ]; then
       $VOICERSS_BINARY $VOICERSS_PLAY $VOICERSS_SPEECH $VOICERSS_LANGUAGE "$VOICERSS_INPUT"
       ffmpeg -y -i $VOICERSS_SPEECH $VOICERSS_SPEECH_MP3
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
