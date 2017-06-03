#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export STREAM2CHROMECAST_PID=$$
export STREAM2CHROMECAST_BINARY=stream2chromecast.py

LOCAL_DEVICE="$1"
LOCAL_VOLUME="$2"
LOCAL_FILE="$3"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ] 
then
    killall -9 $STREAM2CHROMECAST_BINARY
    $STREAM2CHROMECAST_BINARY -devicename $LOCAL_DEVICE -setvol $LOCAL_VOLUME
    $STREAM2CHROMECAST_BINARY -devicename $LOCAL_DEVICE $LOCAL_FILE
    $STREAM2CHROMECAST_BINARY -devicename $LOCAL_DEVICE -stop
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
