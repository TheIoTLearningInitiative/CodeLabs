#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CHIKCHAN_PID=$$
export CHIKCHAN_NAME="Chikchan"
export CHIKCHAN_PATH=$(readlink -f "$0")
export CHIKCHAN_DIRECTORY=$(dirname "$CHIKCHAN_PATH")

LOCAL_TRADITION="DiaDeMuertos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CHIKCHAN_PID $CHIKCHAN_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
