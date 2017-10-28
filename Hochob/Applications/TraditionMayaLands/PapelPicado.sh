#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PAPELPICADO_PID=$$
export PAPELPICADO_NAME="PapelPicado"
export PAPELPICADO_PATH=$(readlink -f "$0")
export PAPELPICADO_DIRECTORY=$(dirname "$PAPELPICADO_PATH")

LOCAL_TRADITION="DiaDeMuertos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $PAPELPICADO_PID $PAPELPICADO_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "demoniclaughter.mp3"
sleep 30
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Random"
sleep 5
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
