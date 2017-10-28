#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i8086_PID=$$
export i8086_NAME="i8086"
export i8086_PATH=$(readlink -f "$0")
export i8086_DIRECTORY=$(dirname "$i8086_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i8086_PID $i8086_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
