#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FESTIVAL_PID=$$
export FESTIVAL_BINARY=festival
export FESTIVAL_COMMANDLINE="--tts --pipe"
export FESTIVAL_CONVERSION="iconv -f utf-8 -t iso-8859-1"
export FESTIVAL_LANGUAGE="--language"
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

    export FESTIVAL_LANGUAGE="${FESTIVAL_LANGUAGE} ${LOCAL_LANGUAGE}"
    export FESTIVAL_INPUT="$LOCAL_TEXT"

    echo "${FESTIVAL_TEXT}" | $FESTIVAL_BINARY $FESTIVAL_COMMANDLINE $FESTIVAL_LANGUAGE 

    ffmpeg -y -i $FESTIVAL_SPEECH $FESTIVAL_SPEECH_MP3

    cp $FESTIVAL_SPEECH $SPEECH
    cp $FESTIVAL_SPEECH_MP3 $SPEECH_MP3

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
