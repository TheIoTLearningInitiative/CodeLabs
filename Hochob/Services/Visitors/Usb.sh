#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export USB_PID=$$

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

LOCAL_PATH=$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

DIRECTORY=$VISITORS/$MEMORIES_CAMERA/$LOCAL_PATH
mkdir -p $DIRECTORY
cp -r $FSWEBCAM_ALLFILES $DIRECTORY

#DIRECTORY=$MEMORIES_DRAWING/$LOCAL_PATH
#mkdir -p $DIRECTORY
#cp -r $DRAWING_ALLFILES $DIRECTORY

#DIRECTORY=$MEMORIES_ROBOT/$LOCAL_PATH
#mkdir -p $DIRECTORY
#cp -r $ESPEAK_ALLFILES $DIRECTORY

#DIRECTORY=$MEMORIES_VIDEO/$LOCAL_PATH
#mkdir -p $DIRECTORY
#cp -r $FFMPEG_ALLFILES $DIRECTORY

# End of File
