#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_STREAM_S2C_PID=$$
export HBS_STREAM_S2C_ROOT=$HOCHOB_SERVICES_STREAM_S2C
export HBS_STREAM_S2C_BINARY=stream2chromecast.py

LOCAL_DEVICE="$1"
LOCAL_VOLUME="$2"
LOCAL_FILE="$3"

export PATH=$PATH:$HBS_STREAM_S2C_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ] 
then
    killall -9 $HBS_STREAM_S2C_BINARY
    $HBS_STREAM_S2C_BINARY -devicename $LOCAL_DEVICE -setvol $LOCAL_VOLUME
    $HBS_STREAM_S2C_BINARY -devicename $LOCAL_DEVICE $LOCAL_FILE
    $HBS_STREAM_S2C_BINARY -devicename $LOCAL_DEVICE -stop
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
