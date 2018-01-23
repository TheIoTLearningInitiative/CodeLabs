#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FAMILIA_PID=$$
export FAMILIA_NAME="Familia"
export FAMILIA_PATH=$(readlink -f "$0")
export FAMILIA_DIRECTORY=$(dirname "$FAMILIA_PATH")

LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $FAMILIA_PID $FAMILIA_NAME

LOCAL_SOUND=`find $TRADITION_NAVIDAD/Sound/ -type f | shuf -n 1`
StreamAudio.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"
