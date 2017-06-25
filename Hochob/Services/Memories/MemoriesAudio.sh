#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MEMORIESAUDIO_PID=$$

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
    FfmpegVideoAudio.sh $SPEECH_MP3
    cp -r $FFMPEG_ALLFILES $LOCAL_VISITORS_INSTITUTION_NAME
    cp $FFMPEG_VIDEO_AUDIO $LOCAL_VISITORS_INSTITUTION_NAME
    cp $FFMPEG_VIDEO_AUDIO $MEMORIES_VIDEO/$LOCAL_INSTITUTION_NAME$LOCAL_IDENTIFICATION.mp4
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi
# End of File
