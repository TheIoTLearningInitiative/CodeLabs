#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ELCIELO_PID=$$
export ELCIELO_PATH=$(readlink -f "$0")
export ELCIELO_DIRECTORY=$(dirname "$ELCIELO_PATH")

LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_VOLUME=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE_VOLUME

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

StreamAudio.sh $LOCAL_DEVICE $LOCAL_VOLUME "$AREA_NORTHERN_MAYA_LOWLANDS/ElCielo.mp3"

#kill -- -$(ps -o pgid=$ELCIELO_PID | grep -o '[0-9]*')

# End of File
