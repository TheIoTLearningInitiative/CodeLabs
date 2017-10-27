#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AMIKOOTRADITION_PID=$$

LOCAL_TRADITION="$1"
LOCAL_SKILL="$2"
LOCAL_ARGUMENT="$3"


# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_SKILL" = "audio" ]; then
    LOCAL_SKILL=$AMIKOO_TRADITION_AUDIO
elif [ "$LOCAL_SKILL" = "image" ]; then
    LOCAL_SKILL=$AMIKOO_TRADITION_IMAGE
elif [ "$LOCAL_SKILL" = "video" ]; then
    LOCAL_SKILL=$AMIKOO_TRADITION_VIDEO
fi

if [ "$LOCAL_ARGUMENT" = "stop" ]; then
    Mosquitto.sh $LOCAL_SKILL "$LOCAL_TRADITION/Stop"
elif [ "$LOCAL_ARGUMENT" = "image" ]; then
    Mosquitto.sh $LOCAL_SKILL "$LOCAL_TRADITION/Random"
else
    Mosquitto.sh $LOCAL_SKILL "$LOCAL_TRADITION/$LOCAL_ARGUMENT"
fi

# End of File
