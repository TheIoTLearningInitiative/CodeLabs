#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export STREAM_PID=$$

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
    LOCAL_DEMO=`Demo.sh`
    if [ "$LOCAL_DEMO" -eq "1" ]
    then
        Mpg123.sh "$LOCAL_FILE"
    else
        Stream2Chromecast.sh "Juum" "1.0" "$LOCAL_FILE"
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
