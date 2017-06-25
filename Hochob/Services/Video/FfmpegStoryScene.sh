#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
#export FFMPEG_ARGUMENTS="-y -s 4096x2304 -framerate 10 -vf fps=10 -pix_fmt yuv420p -acodec copy"
export FFMPEG_ARGUMENTS="-c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest"

LOCAL_IMAGE=$1
LOCAL_AUDIO=$2
LOCAL_VIDEO=$3

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ]
then
    $FFMPEG_BINARY -loop 1 -y -i $LOCAL_IMAGE -i $LOCAL_AUDIO $FFMPEG_ARGUMENTS $LOCAL_VIDEO
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
