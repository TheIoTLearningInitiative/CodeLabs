#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MEMORIES_PID=$$

LOCAL_IDENTIFICATION="$(echo "${1}" | tr -d '[:space:]')"

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

LOCAL_VISITORS_INSTITUTION_NAME=$VISITORS_SOURCE/$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

mkdir -p $LOCAL_VISITORS_INSTITUTION_NAME

if [ $# -eq 1 ]
then

    ffmpeg -y -i $FFMPEG_VIDEO -i $ESPEAK_SPEECH_MP3 -codec copy -shortest $FFMPEG_VIDEO_AUDIO

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi
# End of File
