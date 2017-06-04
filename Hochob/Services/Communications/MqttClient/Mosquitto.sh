#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MOSQUITTO_PID=$$
export MOSQUITTO_BINARY=fswebcam
export MQTT_SERVER_ADDRESS=iot.eclipse.org
export MQTT_SERVER_PORT=1883

LOCAL_TOPIC="$1"
LOCAL_MESSAGE="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

$MOSQUITTO_BINARY -h $MQTT_SERVER_ADDRESS -p $MQTT_SERVER_PORT -q 1 -t $LOCAL_TOPIC -m $LOCAL_MESSAGE

# End of File
