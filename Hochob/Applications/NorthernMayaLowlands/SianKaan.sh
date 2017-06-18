#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SIANKAAN_PID=$$
export SIANKAAN_NAME="Mapimi Application"
export SIANKAAN_PATH=$(readlink -f "$0")
export SIANKAAN_DIRECTORY=$(dirname "$SIANKAAN_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "To be written"
else
    Espeak.sh off spanish \
    "Por escribirse, ${LOCAL_INSTITUTION}"
fi

Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"

kill -- -$(ps -o pgid=$SIANKAAN_PID | grep -o '[0-9]*')

# End of File
