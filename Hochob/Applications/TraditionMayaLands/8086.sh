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

AmikooCommunication.sh "$LOCAL_TRADITION" "Video" "Random"
sleep 10
AmikooCommunication.sh "$LOCAL_TRADITION" "Video" "Stop"

# End of File
