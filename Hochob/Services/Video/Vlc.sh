#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VLC_PID=$$
export VLC_ROOT=$HOCHOB_SERVER_SERVICES_VIDEO
export VLC_BINARY=cvlc
export VLC_ARGUMENTS="--no-video-title-show --fullscreen"
export VLC_LOOP="--loop"

LOCAL_LOOP="$1"
LOCAL_FILE="$2"

export PATH=$PATH:$VLC_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    killall -9 $VLC_BINARY

    if [ "$LOCAL_LOOP" = "on" ]; then
        $VLC_BINARY $VLC_ARGUMENTS $VLC_LOOP $LOCAL_FILE &
    elif [ "$LOCAL_LOOP" = "off" ]; then
        $VLC_BINARY $VLC_ARGUMENTS $LOCAL_FILE &
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
