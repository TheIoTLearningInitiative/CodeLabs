#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MEMORIES_PID=$$

LOCAL_NUMBER="$1"
LOCAL_VIDEO="$2"
LOCAL_IDENTIFICATION="$(echo "${3}" | tr -d '[:space:]')"

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

LOCAL_MEMORIES_CAMERA=$MEMORIES_CAMERA/$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION
LOCAL_MEMORIES_VIDEO=$MEMORIES_VIDEO/$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ]
then
    mkdir -p $LOCAL_MEMORIES_CAMERA
    Fswebcam.sh $LOCAL_NUMBER
    cp -r $FSWEBCAM_ALLFILES $LOCAL_MEMORIES_CAMERA

    if [ "$LOCAL_VIDEO" = "on" ]; then
        mkdir -p $LOCAL_MEMORIES_VIDEO
        Ffmpeg.sh $FSWEBCAM_DIRECTORY
        cp -r $FFMPEG_ALLFILES $LOCAL_MEMORIES_VIDEO
    fi

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi
# End of File
