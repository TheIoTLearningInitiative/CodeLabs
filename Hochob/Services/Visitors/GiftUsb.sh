#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GIFTUSB_PID=$$

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

DIRECTORY=$VISITORS/$LOCAL_INSTITUTION_NAME
mkdir -p $DIRECTORY

cp -r $HOCHOB_SERVER_MEDIA_MEMORIES_CAMERA $DIRECTORY
#cp -r $DRAWING_ALLFILES $DIRECTORY
#cp -r $ESPEAK_ALLFILES $DIRECTORY
#cp -r $FFMPEG_ALLFILES $DIRECTORY

# End of File
