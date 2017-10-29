#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AMIKOOVOICE_PID=$$

LOCAL_LANGUAGE="$1"
LOCAL_MESSAGE=""
LOCAL_TOPIC=""

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
    if [ "$i" -ne 0 ]; then
      LOCAL_MESSAGE=$LOCAL_MESSAGE"$var"
      echo $LOCAL_MESSAGE
    fi
    i=`expr $i + 1`
done

echo $LOCAL_MESSAGE

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    LOCAL_TOPIC=$AMIKOO_TALK
elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
    LOCAL_TOPIC=$AMIKOO_HABLAR
fi

Mosquitto.sh $LOCAL_TOPIC $LOCAL_MESSAGE
