#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i8080_PID=$$
export i8080_NAME="i8080"
export i8080_PATH=$(readlink -f "$0")
export i8080_DIRECTORY=$(dirname "$i8080_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i8080_PID $i8080_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Random"
sleep 10
AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
