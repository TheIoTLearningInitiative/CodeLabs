#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export KAN_PID=$$
export KAN_NAME="Ik"
export KAN_PATH=$(readlink -f "$0")
export KAN_DIRECTORY=$(dirname "$KAN_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $KAN_PID $KAN_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "IntelBong.mp3"
sleep 5
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "IntelBongPeople.mp3"


# End of File
