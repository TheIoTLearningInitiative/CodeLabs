#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_VIDEO_VLC_PID=$$
export HBS_VIDEO_VLC_ROOT=$HOCHOB_SERVICES_VIDEO
export HBS_VIDEO_VLC_BINARY=cvlc
export HBS_VIDEO_VLC_ARGUMENTS="--no-video-title-show --fullscreen"
export HBS_VIDEO_VLC_LOOP="--loop"

LOCAL_LOOP="$1"
LOCAL_FILE="$2"

export PATH=$PATH:$HBS_VIDEO_VLC_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    killall -9 $HBS_VIDEO_VLC_BINARY

    if [ "$LOCAL_LOOP" = "on" ]; then
        $HBS_VIDEO_VLC_BINARY $HBS_VIDEO_VLC_ARGUMENTS $LOCAL_FILE &
    elif [ "$LOCAL_LOOP" = "off" ]; then
        $HBS_VIDEO_VLC_BINARY $HBS_VIDEO_VLC_ARGUMENTS $HBS_VIDEO_VLC_LOOP $LOCAL_FILE &
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
