#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AKBAL_PID=$$
export AKBAL_NAME="Imix"
export AKBAL_PATH=$(readlink -f "$0")
export AKBAL_DIRECTORY=$(dirname "$AKBAL_PATH")

LOCAL_SEASON="Intel"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $AKBAL_PID $AKBAL_NAME

LOCAL_SOUND=`find $TRADITION_INTEL/Sound/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

# End of File
