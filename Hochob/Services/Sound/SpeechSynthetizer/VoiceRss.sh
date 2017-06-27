#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VOICERSS_PID=$$
export VOICERSS_BINARY=$HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER/VoiceRss.py
export VOICERSS_ARGUMENTS="--stdout"
export VOICERSS_PLAY="-w"
export VOICERSS_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS
export VOICERSS_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_SPEECH

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
        export VOICERSS_LANGUAGE="en-us"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export VOICERSS_LANGUAGE="es-mx"
    fi

    export VOICERSS_INPUT="${LOCAL_TEXT}"

    $VOICERSS_BINARY $VOICERSS_LANGUAGE $VOICERSS_SPEECH "\"$VOICERSS_INPUT\""

    ffmpeg -y -i $VOICERSS_SPEECH $VOICERSS_SPEECH_MP3

    cp $VOICERSS_SPEECH $SPEECH
    cp $VOICERSS_SPEECH_MP3 $SPEECH_MP3

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
