#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
export FFMPEG_ARGUMENTS="-y -s 4096x2304 -framerate 5 -vf fps=5 -pix_fmt yuv420p"

LOCAL_DIRECTORY="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    $FFMPEG_BINARY -i "$LOCAL_DIRECTORY/"%04d.jpg $FFMPEG_ARGUMENTS $FFMPEG_VIDEO
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
