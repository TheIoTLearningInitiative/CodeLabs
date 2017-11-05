#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MANTEL_PID=$$
export MANTEL_NAME="Mantel"
export MANTEL_PATH=$(readlink -f "$0")
export MANTEL_DIRECTORY=$(dirname "$MANTEL_PATH")

LOCAL_TRADITION="DiaDeMuertos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MANTEL_PID $MANTEL_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
