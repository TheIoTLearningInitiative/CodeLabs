#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ROBOTREMOTE_PID=$$

LOCAL_COMMAND="$1"
LOCAL_MESSAGE="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then

    LOCAL_DEMO=`Demo.sh`
    if [ "$LOCAL_DEMO" -eq "1" ]; then
        if [ "$LOCAL_MESSAGE" != "1" ]
        then
            Espeak.sh on spanish "$LOCAL_MESSAGE"
        fi
    else
        Mosquitto.sh $LOCAL_COMMAND $LOCAL_MESSAGE
    fi

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
