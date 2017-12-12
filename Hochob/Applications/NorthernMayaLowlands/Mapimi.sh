#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MAPIMI_PID=$$
export MAPIMI_NAME="Mapimi Application"
export MAPIMI_PATH=$(readlink -f "$0")
export MAPIMI_DIRECTORY=$(dirname "$MAPIMI_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="pico2wave"

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh off $LOCAL_TTS_ENGINE english \
    "
    It was a great pleasure to meet you and have you here at Intel Guadalajara. \
    Come back soon future Engineers.
    "
else
    SpeechSynthetizer.sh off $LOCAL_TTS_ENGINE spanish \
    "
    Me da mucho gusto conocerlos y que hayan venido a Intel Guadalajara. \
    Regresen pronto futuras y futuros Ingenieros
    "
fi

Stream.sh "Eek'" "1.0" "$SPEECH_MP3"

# End of File
