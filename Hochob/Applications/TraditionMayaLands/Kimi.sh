#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export 8080_PID=$$
export 8080_NAME="8080"
export 8080_PATH=$(readlink -f "$0")
export 8080_DIRECTORY=$(dirname "$8080_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $8080_PID $8080_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
