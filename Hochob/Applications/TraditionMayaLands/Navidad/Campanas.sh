#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CAMPANAS_PID=$$
export CAMPANAS_NAME="Campanas"
export CAMPANAS_PATH=$(readlink -f "$0")
export CAMPANAS_DIRECTORY=$(dirname "$CAMPANAS_PATH")

LOCAL_TRADITION="Navidad"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CAMPANAS_PID $CAMPANAS_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Random"
sleep 5
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
