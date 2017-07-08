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

LOCAL_VISITORS_INSTITUTION_NAME=$VISITORS_SOURCE/$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

mkdir -p $LOCAL_VISITORS_INSTITUTION_NAME

if [ $# -eq 3 ]
then
    rm -f $FSWEBCAM_ALLFILES
    Fswebcam.sh $LOCAL_NUMBER
    cp -r $FSWEBCAM_DIRECTORY $LOCAL_VISITORS_INSTITUTION_NAME

    LOCAL_SELECTED_FILE=`find $FSWEBCAM_DIRECTORY -type f | shuf -n 1`
    cp $LOCAL_SELECTED_FILE $MEMORIES_CAMERA/$LOCAL_INSTITUTION_NAME$LOCAL_IDENTIFICATION.jpg
    cp $LOCAL_SELECTED_FILE $FSWEBCAM_IMAGE
    
    if [ "$LOCAL_VIDEO" = "on" ]; then
        FfmpegImage.sh $FSWEBCAM_DIRECTORY
        cp -r $FFMPEG_ALLFILES $LOCAL_VISITORS_INSTITUTION_NAME
        cp $FFMPEG_IMAGE $LOCAL_VISITORS_INSTITUTION_NAME
        cp $FFMPEG_IMAGE $MEMORIES_VIDEO/$LOCAL_INSTITUTION_NAME$LOCAL_IDENTIFICATION.mp4
    fi

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi
# End of File
