#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export APLAY_PID=$$
export APLAY_ROOT=$HOCHOB_SERVER_SERVICES_SOUND_PLAY
export APLAY_BINARY=aplay

LOCAL_FILE="$1"

export PATH=$PATH:$APLAY_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ] 
then
    killall -9 $APLAY_BINARY
    $APLAY_BINARY $LOCAL_FILE
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
