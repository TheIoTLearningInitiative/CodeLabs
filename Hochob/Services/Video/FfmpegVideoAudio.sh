#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
export FFMPEG_ARGUMENTS="-codec copy -shortest"

LOCAL_AUDIO=$1

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    $FFMPEG_BINARY -loop 1 -y -i $FFMPEG_IMAGE -i $ESPEAK_SPEECH_MP3 -codec copy -shortest $FFMPEG_VIDEO_AUDIO
    cp $FFMPEG_VIDEO_AUDIO $FFMPEG_VIDEO
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
