#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export 8086_PID=$$
export 8086_NAME="8086"
export 8086_PATH=$(readlink -f "$0")
export 8086_DIRECTORY=$(dirname "$8086_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $8086_PID $8086_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
