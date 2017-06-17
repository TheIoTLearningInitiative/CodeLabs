#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CONVERTTEXT_PID=$$
export CONVERTTEXT_BINARY=convert
export CONVERTTEXT_ARGUMENTS="-font Robot -pointsize 80 \
                              -fill "rgb(0,174,239)" -stroke yellow -draw"

LOCAL_TEXT="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    $CONVERTTEXT_BINARY $CONVERTTEXT_ARGUMENTS "text 100,1000 \"$LOCAL_TEXT\"" $FSWEBCAM_IMAGE $FSWEBCAM_IMAGE_TEXT
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
