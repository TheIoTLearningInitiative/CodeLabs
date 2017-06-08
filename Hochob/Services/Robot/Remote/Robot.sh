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
    if [ "$HOCHOBDEMO" != "1" ]
    then
        echo "Here"
        #Mosquitto.sh $LOCAL_COMMAND $LOCAL_MESSAGE
    else
        echo "There"
        if [ "$LOCAL_MESSAGE" != "1" ]
        then
            Espeak.sh on spanish "$LOCAL_MESSAGE"
        fi
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
