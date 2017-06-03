#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_IMAGE_EOG_PID=$$
export HBS_IMAGE_EOG_ROOT=$HOCHOB_SERVER_SERVICES_IMAGE
export HBS_IMAGE_EOG_BINARY=eog
export HBS_IMAGE_EOG_ARGUMENTS="-sf"

LOCAL_FILES="$1"

export PATH=$PATH:$HBS_IMAGE_EOG_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    killall -9 $HBS_IMAGE_EOG_BINARY
    $HBS_IMAGE_EOG_BINARY  $HBS_IMAGE_EOG_ARGUMENTS $LOCAL_FILES &
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
