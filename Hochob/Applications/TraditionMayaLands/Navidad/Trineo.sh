#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export TRINEO_PID=$$
export TRINEO_NAME="Trineo"
export TRINEO_PATH=$(readlink -f "$0")
export TRINEO_DIRECTORY=$(dirname "$TRINEO_PATH")

LOCAL_TRADITION="Navidad"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $TRINEO_PID $TRINEO_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Video" "Random"
sleep 10
AmikooCommunication.sh "$LOCAL_TRADITION" "Video" "Stop"

# End of File
