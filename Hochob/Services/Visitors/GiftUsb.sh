#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GIFTUSB_PID=$$

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

LOCAL_MEMORIES_CAMERA=$MEMORIES_CAMERA/$LOCAL_INSTITUTION_NAME/

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_VISITORS=$VISITORS/$LOCAL_INSTITUTION_NAME
mkdir -p $LOCAL_VISITORS

cp -r $LOCAL_MEMORIES_CAMERA $LOCAL_VISITORS

#cp -r $DRAWING_ALLFILES $DIRECTORY
#cp -r $ESPEAK_ALLFILES $DIRECTORY
#cp -r $FFMPEG_ALLFILES $DIRECTORY

# End of File
