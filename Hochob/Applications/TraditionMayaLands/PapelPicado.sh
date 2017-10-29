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

AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "demoniclaughter.mp3"
sleep 30
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Random"
sleep 5
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
