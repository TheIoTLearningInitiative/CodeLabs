#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export CONVERTTEXT_PID=$$
export CONVERTTEXT_BINARY=convert
export CONVERTTEXT_ARGUMENTS="-font Times-Bold -pointsize 80 \
                              -fill DeepSkyBlue -stroke yellow -draw"

LOCAL_IMAGE="$1"
LOCAL_TEXT="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    $CONVERTTEXT_BINARY $CONVERTTEXT_ARGUMENTS "text 100,1000 \"$LOCAL_TEXT\"" $LOCAL_IMAGE $FSWEBCAM_IMAGE_TEXT
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
