#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FESTIVAL_PID=$$
export FESTIVAL_BINARY=festival
export FESTIVAL_WAVE="-w="
export FESTIVAL_LANGUAGE="-l en-US"
export FESTIVAL_INPUT="No input has been provided"
export FESTIVAL_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE
export FESTIVAL_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_SPEECH

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
        export FESTIVAL_LANGUAGE="-l en-US"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export FESTIVAL_LANGUAGE="-l es-ES"
    fi

    export FESTIVAL_INPUT="$LOCAL_TEXT"

    $FESTIVAL_BINARY $FESTIVAL_WAVE$FESTIVAL_SPEECH $FESTIVAL_LANGUAGE "$FESTIVAL_INPUT"

    ffmpeg -y -i $FESTIVAL_SPEECH $FESTIVAL_SPEECH_MP3

    cp $FESTIVAL_SPEECH $SPEECH
    cp $FESTIVAL_SPEECH_MP3 $SPEECH_MP3

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
