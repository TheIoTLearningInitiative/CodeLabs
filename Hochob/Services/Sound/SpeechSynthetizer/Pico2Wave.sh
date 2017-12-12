#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PICO2WAVE_PID=$$
export PICO2WAVE_BINARY=pico2wave
export PICO2WAVE_WAVE="-w="
export PICO2WAVE_LANGUAGE="-l en-US"
export PICO2WAVE_INPUT="No input has been provided"
export PICO2WAVE_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE
export PICO2WAVE_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_SPEECH

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
        export PICO2WAVE_LANGUAGE="-l en-US"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export PICO2WAVE_LANGUAGE="-l es-ES"
    fi

    export PICO2WAVE_INPUT="$LOCAL_TEXT"

    $PICO2WAVE_BINARY $PICO2WAVE_WAVE$PICO2WAVE_SPEECH $PICO2WAVE_LANGUAGE "$PICO2WAVE_INPUT"

    ffmpeg -y -i $PICO2WAVE_SPEECH $PICO2WAVE_SPEECH_MP3

    cp $PICO2WAVE_SPEECH $SPEECH
    cp $PICO2WAVE_SPEECH_MP3 $SPEECH_MP3

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
