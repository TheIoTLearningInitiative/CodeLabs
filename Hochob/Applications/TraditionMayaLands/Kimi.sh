#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export KIMI_PID=$$
export KIMI_NAME="Kimi"
export KIMI_PATH=$(readlink -f "$0")
export KIMI_DIRECTORY=$(dirname "$KIMI_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CKIMI_PID $KIMI_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
