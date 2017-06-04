#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MEMORIES_PID=$$

LOCAL_TYPE="$1"
LOCAL_INSTITUTION_NAME="$(echo "${2}" | tr -d '[:space:]')"
LOCAL_IDENTIFICATION="$(echo "${3}" | tr -d '[:space:]')"

LOCAL_PATH=$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ]
then

    if [ "$LOCAL_TYPE" = "camera" ]; then
        DIRECTORY=$MEMORIES_CAMERA/$LOCAL_PATH
        mkdir -p $DIRECTORY
        cp -r $FSWEBCAM_ALLFILES $DIRECTORY
    elif [ "$LOCAL_TYPE" = "drawing" ]; then
        DIRECTORY=$MEMORIES_DRAWING/$LOCAL_PATH
        mkdir -p $DIRECTORY
        cp -r $DRAWING_ALLFILES $DIRECTORY
    elif [ "$LOCAL_TYPE" = "robot" ]; then
        DIRECTORY=$MEMORIES_ROBOT/$LOCAL_PATH
        mkdir -p $DIRECTORY
        cp -r $ESPEAK_ALLFILES $DIRECTORY
    elif [ "$LOCAL_TYPE" = "video" ]; then
        DIRECTORY=$MEMORIES_VIDEO/$LOCAL_PATH
        mkdir -p $DIRECTORY
        cp -r $FFMPEG_ALLFILES $DIRECTORY
    fi

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi
# End of File
