#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VELADORA_PID=$$
export VELADORA_NAME="Veladora"
export VELADORA_PATH=$(readlink -f "$0")
export VELADORA_DIRECTORY=$(dirname "$VELADORA_PATH")

LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $VELADORA_PID $VELADORA_NAME

LOCAL_SOUND=`find $TRADITION_DIADEMUERTOS/Sound/ -type f | shuf -n 1`
StreamAudio.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

# End of File
