#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PESEBRE_PID=$$
export PESEBRE_NAME="Pesebre"
export PESEBRE_PATH=$(readlink -f "$0")
export PESEBRE_DIRECTORY=$(dirname "$PESEBRE_PATH")

LOCAL_TRADITION="Navidad"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $PESEBRE_PID $PESEBRE_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
