#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HANDLERMULTIPLECHOICE_PID=$$

LOCAL_IDENTIFICATION="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    answer=`$HOCHOB_SERVER_SERVICES_KEYPAD/HandlerMultipleChoice.py $MQTT_SERVER_ADDRESS`
    echo $answer
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
