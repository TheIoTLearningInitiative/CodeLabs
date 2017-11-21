#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CAMPANA_PID=$$
export CAMPANA_NAME="Campana"
export CAMPANA_PATH=$(readlink -f "$0")
export CAMPANA_DIRECTORY=$(dirname "$CAMPANA_PATH")

LOCAL_TRADITION="Navidad"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CAMPANA_PID $CAMPANA_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Random"
sleep 5
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
