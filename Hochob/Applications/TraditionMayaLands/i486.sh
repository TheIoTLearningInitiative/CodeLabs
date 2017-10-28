#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i486_PID=$$
export i486_NAME="i486"
export i486_PATH=$(readlink -f "$0")
export i486_DIRECTORY=$(dirname "$i486_PATH")

LOCAL_SEASON="Intel"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i486_PID $i486_NAME

Eog.sh "$TRADITION_INTEL/Image/*" &
LOCAL_SOUND=`find $TRADITION_INTEL/Sound/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

SpeechSynthetizer.sh on espeak spanish \
    "Saludos \
     "

KillApp.sh "eog"

# End of File
