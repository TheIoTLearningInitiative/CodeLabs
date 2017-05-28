#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_STREAM_S2C_ROOT=$HOCHOB_SERVICES_STREAM_S2C
export HBS_STREAM_S2C_BINARY=stream2chromecast.py

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_DEVICE="$1"
LOCAL_VOLUME="$2"
LOCAL_FILE="$3"

killall -9 $HBS_STREAM_S2C_BINARY

export PATH=$PATH:$HBS_STREAM_S2C_ROOT

$HBS_STREAM_S2C_BINARY -devicename $LOCAL_DEVICE -setvol $LOCAL_VOLUME
$HBS_STREAM_S2C_BINARY -devicename $LOCAL_DEVICE $LOCAL_FILE
$HBS_STREAM_S2C_BINARY -devicename $LOCAL_DEVICE -stop

# End of File
