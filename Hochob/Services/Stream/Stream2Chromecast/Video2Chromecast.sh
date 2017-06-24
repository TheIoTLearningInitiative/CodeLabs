#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export VIDEOCHROMECAST_PID=$$
export VIDEO2CHROMECAST_BINARY=stream2chromecast.py
export VIDEO2CHROMECAST_ARGUMENTS="-transcodebufsize 5242880"
export VIDEO2CHROMECAST_TRANSCODER="-transcoder avconv -transcode"

LOCAL_DEVICE="$1"
LOCAL_VOLUME=0.75
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
    $VIDEO2CHROMECAST_BINARY -devicename $LOCAL_DEVICE -setvol $LOCAL_VOLUME
    $VIDEO2CHROMECAST_BINARY -devicename $LOCAL_DEVICE $VIDEO2CHROMECAST_ARGUMENTS \
                              -transcodeopts '-b:v 1000k -b:a 24k' \
                              $VIDEO2CHROMECAST_TRANSCODER $LOCAL_FILE
    $VIDEO2CHROMECAST_BINARY -devicename $LOCAL_DEVICE -stop
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
