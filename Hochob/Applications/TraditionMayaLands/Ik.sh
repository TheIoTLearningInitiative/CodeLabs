#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export IK_PID=$$
export IK_NAME="Ik"
export IK_PATH=$(readlink -f "$0")
export IK_DIRECTORY=$(dirname "$IK_PATH")

LOCAL_SEASON="DiaDeMuertos"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $IK_PID $IK_NAME

LOCAL_SOUND=`find $TRADITION_DIADEMUERTOS/Sound/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

# End of File
