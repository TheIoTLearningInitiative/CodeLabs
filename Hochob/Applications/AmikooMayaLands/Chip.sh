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
    "Photography express service, Smile."
else
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Servicio express de fotografía, Sonríe."
fi

sleep 3

Amikoo.sh amikoo/headright && sleep 1
Amikoo.sh amikoo/headleft && sleep 1

AmikooCommunication.sh "Amikoo" "Audio" "TakePictureEllie.mp3"
sleep .5
AmikooSense.sh "Sight" "Picture"
AmikooCommunication.sh "Amikoo" "Audio" "Stop"
