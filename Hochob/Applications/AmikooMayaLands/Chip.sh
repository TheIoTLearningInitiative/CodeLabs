#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CHIP_PID=$$
export CHIP_NAME="Chip"
export CHIP_PATH=$(readlink -f "$0")
export CHIP_DIRECTORY=$(dirname "$CHIP_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CHIP_PID $CHIP_NAME

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Time to take you a picture, Smile when you hear the sound."
else
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Es hora de tomarte una foto, Sonríe cuando escuches un sonido."
fi

sleep 3

Amikoo.sh amikoo/headright && sleep .6
Amikoo.sh amikoo/headleft && sleep .6

AmikooCommunication.sh "Amikoo" "Audio" "TakePictureEllie.mp3"

AmikooSense.sh "Sight" "Picture"

AmikooCommunication.sh "DiaDeMuertos" "Audio" "Stop"
