#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export IK_PID=$$
export IK_NAME="Ik"
export IK_PATH=$(readlink -f "$0")
export IK_DIRECTORY=$(dirname "$IK_PATH")

LOCAL_TRADITION="DiaDeMuertos"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $IK_PID $IK_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "demoniclaughter.mp3"
sleep 30
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Random"
sleep 5
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
