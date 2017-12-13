#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MOSQUITTO_PID=$$
export MOSQUITTO_PUB_BINARY=mosquitto_pub
export MQTT_SERVER_ADDRESS=$MQTT_SERVER_ADDRESS
export MQTT_SERVER_PORT=$MQTT_SERVER_PORT

LOCAL_TOPIC="${1}"
LOCAL_MESSAGE="${2}"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

i=0
for var in "$@"
do
    if [ "$i" -gt 1 ]; then
      LOCAL_MESSAGE=$LOCAL_MESSAGE" $var"
      echo $LOCAL_MESSAGE
    fi
    i=`expr $i + 1`
done

$MOSQUITTO_PUB_BINARY -h $MQTT_SERVER_ADDRESS -p $MQTT_SERVER_PORT -q 2 -t "$LOCAL_TOPIC" -m "\"${LOCAL_MESSAGE}\""

exit 0

if [ $# -eq 2 ]
then
    $MOSQUITTO_PUB_BINARY -h $MQTT_SERVER_ADDRESS -p $MQTT_SERVER_PORT -q 1 -t $LOCAL_TOPIC -m $LOCAL_MESSAGE
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
