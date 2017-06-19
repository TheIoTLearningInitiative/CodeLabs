#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export FSWEBCAM_PID=$$
export FSWEBCAM_BINARY=fswebcam
export FSWEBCAM_ARGUMENTS="-r 4096x2304 -s brightness=50% -s Contrast=50% -s Gamma=50% --jpeg 100 --no-banner"
export FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE

LOCAL_IMAGES="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

IMAGE=1

if [ $# -eq 1 ]
then

    while [ $IMAGE -le "$LOCAL_IMAGES" ]
    do
        DATE=`date +"%Y%m%d%H%M%S"`
        NAME=`printf %04d $IMAGE`
        $FSWEBCAM_BINARY $FSWEBCAM_ARGUMENTS $FSWEBCAM_DIRECTORY/$NAME.jpg
        cp $FSWEBCAM_DIRECTORY/$NAME.jpg $FSWEBCAM_IMAGE
        IMAGE=$(($IMAGE+1))
    done

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi


# End of File
