#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AMIKOOCOMMUNICATION_PID=$$

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

if [ "$LOCAL_SKILL" = "Audio" ]; then
    LOCAL_SKILL=$AMIKOO_AUDIO
elif [ "$LOCAL_SKILL" = "Image" ]; then
    LOCAL_SKILL=$AMIKOO_IMAGE
elif [ "$LOCAL_SKILL" = "Video" ]; then
    LOCAL_SKILL=$AMIKOO_VIDEO
fi

if [ "$LOCAL_ARGUMENT" = "Stop" ]; then
    Mosquitto.sh $LOCAL_SKILL "$LOCAL_TRADITION/Stop"
elif [ "$LOCAL_ARGUMENT" = "Random" ]; then
    Mosquitto.sh $LOCAL_SKILL "$LOCAL_TRADITION/Random"
else
    Mosquitto.sh $LOCAL_SKILL "$LOCAL_TRADITION/$LOCAL_ARGUMENT"
fi

# End of File
