#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export CONVERTRESIZE_PID=$$
export CONVERTRESIZE_BINARY=convert
export CONVERTRESIZE_ARGUMENTS="-resize 4096x2304\!"

LOCAL_IMAGE="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    $CONVERTRESIZE_BINARY $LOCAL_IMAGE $CONVERTRESIZE_ARGUMENTS $LOCAL_IMAGE.temp
    mv $LOCAL_IMAGE.temp mv $LOCAL_IMAGE
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
