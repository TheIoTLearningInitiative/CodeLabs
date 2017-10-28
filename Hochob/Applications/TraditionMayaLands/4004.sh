#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export 4004_PID=$$
export A4004_NAME="Imix"
export 4004_PATH=$(readlink -f "$0")
export 4004_DIRECTORY=$(dirname "$4004_PATH")

LOCAL_SEASON="Intel"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $4004_PID $4004_NAME

LOCAL_SOUND=`find $TRADITION_INTEL/Sound/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

# End of File
