#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AMIKOO_PID=$$

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

# Movement

Mosquitto.sh $LOCAL_COMMAND $LOCAL_MESSAGE

exit 0

# Sandbox

LOCAL_DEMO=`Demo.sh`
if [ "$LOCAL_DEMO" -eq "1" ]; then
    if [ "$LOCAL_MESSAGE" != "1" ]
    then
        Espeak.sh on spanish "$LOCAL_MESSAGE"
    fi
else
    Mosquitto.sh $LOCAL_COMMAND "$LOCAL_MESSAGE"
fi

if [ "$LOCAL_COMMAND" = "lupe/message" ]; then
    LOCAL_LANGUAGE=`Language.sh`
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        AmikooVoice.sh $LOCAL_LANGUAGE $LOCAL_MESSAGE
    else
        AmikooVoice.sh $LOCAL_LANGUAGE $LOCAL_MESSAGE
    fi
else
    Mosquitto.sh $LOCAL_COMMAND $LOCAL_MESSAGE
fi

# End of File
