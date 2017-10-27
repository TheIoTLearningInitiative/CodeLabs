#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ESPEAK_PID=$$
export ESPEAK_BINARY=espeak
export ESPEAK_ARGUMENTS="--stdout"
export ESPEAK_PLAY="-w"
export ESPEAK_LANGUAGE="-ven+m5"
export ESPEAK_INPUT="No input has been provided"
export ESPEAK_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK
export ESPEAK_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH

LOCAL_LANGUAGE="$1"
LOCAL_TEXT="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        export ESPEAK_LANGUAGE="-v en-us -a 100 -p 50 -s 170"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export ESPEAK_LANGUAGE="-v es-la -a 100 -p 50 -s 170"
    fi

    export ESPEAK_INPUT="$LOCAL_TEXT"

    $ESPEAK_BINARY $ESPEAK_PLAY $ESPEAK_SPEECH $ESPEAK_LANGUAGE "$ESPEAK_INPUT"

    ffmpeg -y -i $ESPEAK_SPEECH $ESPEAK_SPEECH_MP3

    cp $ESPEAK_SPEECH $SPEECH
    cp $ESPEAK_SPEECH_MP3 $SPEECH_MP3

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
