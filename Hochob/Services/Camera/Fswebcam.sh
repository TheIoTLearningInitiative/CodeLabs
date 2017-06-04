#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FSWEBCAM_PID=$$
export FSWEBCAM_BINARY=fswebcam
export FSWEBCAM_ARGUMENTS="-r 1280x720 -s brightness=65% -s Contrast=50% -s Gamma=100% --jpeg 100 --no-banner"
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
        IMAGE=$(($IMAGE+1))
        $FSWEBCAM_BINARY $FSWEBCAM_ARGUMENTS $FSWEBCAM_DIRECTORY/$DATE.jpg
        sleep 1
    done

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi


# End of File
