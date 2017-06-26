#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
export FFMPEG_INPUT=/dev/video0
export FFMPEG_ARGUMENTS="-y -codec:v libx264 -qp 0"
export FFMPEG_ARGUMENTS="-y"
export FFMPEG_TIME="-t 00:00:"

export LOCAL_SECONDS=$1
export FFMPEG_TIME="${FFMPEG_TIME}${LOCAL_SECONDS}"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    ffmpeg -i $FFMPEG_INPUT $FFMPEG_TIME $FFMPEG_ARGUMENTS $FFMPEG_CAMERA
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
