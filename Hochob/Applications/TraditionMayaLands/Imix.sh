#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GOOGLE_PID=$$
export GOOGLE_NAME="Zacatecas"
export GOOGLE_PATH=$(readlink -f "$0")
export GOOGLE_DIRECTORY=$(dirname "$GOOGLE_PATH")

LOCAL_SEASON="Halloween"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $GOOGLE_PID $GOOGLE_NAME

if [ "$LANGUAGE" = "english" ]; then
    Robot.sh $AMIKOO_SAY "Happy Halloween"
else
    Robot.sh $AMIKOO_DECIR "Feliz dia de muertos"
fi

LOCAL_SOUND=`find $SEASON/$LOCAL_SEASON/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

# See implement WindRiver.sh logic, maybe Season service?

# End of File
