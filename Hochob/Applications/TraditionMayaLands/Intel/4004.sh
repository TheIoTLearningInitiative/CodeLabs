#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i4004_PID=$$
export i4004_NAME="i4004"
export i4004_PATH=$(readlink -f "$0")
export i4004_DIRECTORY=$(dirname "$i4004_PATH")

LOCAL_SEASON="Intel"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i4004_PID $i4004_NAME

LOCAL_SOUND=`find $TRADITION_INTEL/Sound/ -type f | shuf -n 1`
StreamAudio.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

# End of File
