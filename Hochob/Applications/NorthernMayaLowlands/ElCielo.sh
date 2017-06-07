#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ELCIELO_PID=$$
export ELCIELO_PATH=$(readlink -f "$0")
export ELCIELO_DIRECTORY=$(dirname "$ELCIELO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

#Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/ElCielo.mp3"

Eog.sh $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM &

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "To be written"
else
    Espeak.sh off spanish \
    "Me da mucho gusto conocerlos y que hayan venido a Intel. \
    Regresen pronto!"
fi

Stream.sh "Juum" "1.0" "$ESPEAK_SPEECH_MP3"

kill -- -$(ps -o pgid=$ELCIELO_PID | grep -o '[0-9]*')

# End of File
