#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_SOUND_PX_APLAY_PID=$$
export HBS_SOUND_PX_APLAY_ROOT=$HOCHOB_SERVER_SERVICES_SOUND_PLAY
export HBS_SOUND_PX_APLAY_BINARY=aplay

LOCAL_FILE="$1"

export PATH=$PATH:$HBS_SOUND_PX_APLAY_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ] 
then
    killall -9 $HBS_SOUND_PX_APLAY_BINARY
    $HBS_SOUND_PX_APLAY_BINARY $LOCAL_FILE
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
