#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AMIKOO_PID=$$

LOCAL_COMMAND="$1"
LOCAL_MESSAGE="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_COMMAND" = "gcvisionapi" ]; then
    Mosquitto.sh $AMIKOO_GCVISIONAPI "Google Cloud Vision API"
elif [ "$LOCAL_COMMAND" = "gctranslationapi" ]; then
    Mosquitto.sh $AMIKOO_GCTRANSLATIONAPI "Google Cloud Translation API"
elif [ "$LOCAL_COMMAND" = "amazonalexa" ]; then
    Mosquitto.sh $AMIKOO_GCTRANSLATIONAPI $LOCAL_MESSAGE
fi

# End of File