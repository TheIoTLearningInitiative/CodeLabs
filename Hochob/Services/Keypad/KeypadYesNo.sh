#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export KEYPAD_PID=$$
export KEYPAD_MQTT_TOPIC=hochob/keypad/

LOCAL_IDENTIFICATION="$1"
LOCAL_BUTTON="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    Mosquitto.sh $KEYPAD_MQTT_TOPIC$LOCAL_IDENTIFICATION $LOCAL_BUTTON
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
