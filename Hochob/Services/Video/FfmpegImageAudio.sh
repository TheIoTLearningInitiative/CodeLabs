#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
export FFMPEG_ARGUMENTS="-y -s 4096x2304 -framerate 10 -vf fps=10 -pix_fmt yuv420p -acodec copy"

LOCAL_AUDIO=$1
LOCAL_DIRECTORY="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    $FFMPEG_BINARY -i "$LOCAL_DIRECTORY/"%04d.jpg -i $LOCAL_AUDIO $FFMPEG_ARGUMENTS $FFMPEG_IMAGE_AUDIO
    cp $FFMPEG_IMAGE_AUDIO $FFMPEG_VIDEO
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
