#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MEMORIES_PID=$$

LOCAL_NUMBER="$1"
LOCAL_IDENTIFICATION="$(echo "${2}" | tr -d '[:space:]')"

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

LOCAL_MEMORIES_CAMERA=$MEMORIES_CAMERA/$LOCAL_INSTITUTION_NAME/$LOCAL_IDENTIFICATION

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    mkdir -p $LOCAL_MEMORIES_CAMERA
    Fswebcam.sh $LOCAL_NUMBER
    cp -r $FSWEBCAM_ALLFILES $LOCAL_MEMORIES_CAMERA
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi
# End of File
