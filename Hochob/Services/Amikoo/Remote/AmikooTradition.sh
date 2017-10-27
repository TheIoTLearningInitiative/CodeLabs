#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AMIKOOTRADITION_PID=$$

LOCAL_COMMAND="$1"
LOCAL_MESSAGE=""

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

# Skills Advanced

if [ "$LOCAL_COMMAND" = "gcvisionapi" ]; then
    Mosquitto.sh $AMIKOO_GCVISIONAPI "Google Cloud Vision API"
elif [ "$LOCAL_COMMAND" = "gctranslationapi" ]; then
    Mosquitto.sh $AMIKOO_GCTRANSLATIONAPI "Google Cloud Translation API"
fi

# Skills Basic

Mosquitto.sh $LOCAL_COMMAND $LOCAL_MESSAGE

# End of File
