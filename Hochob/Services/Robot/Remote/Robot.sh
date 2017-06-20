#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ROBOTREMOTE_PID=$$

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

if [ "$LOCAL_COMMAND" = "lupe/message" ]; then
    LOCAL_LANGUAGE=`Language.sh`
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        Mosquitto.sh lupe/say $LOCAL_MESSAGE
    else
        Mosquitto.sh lupe/decir $LOCAL_MESSAGE
    fi
else
    Mosquitto.sh $LOCAL_COMMAND $LOCAL_MESSAGE
fi

exit 0

LOCAL_DEMO=`Demo.sh`
if [ "$LOCAL_DEMO" -eq "1" ]; then
    if [ "$LOCAL_MESSAGE" != "1" ]
    then
        Espeak.sh on spanish "$LOCAL_MESSAGE"
    fi
else
    Mosquitto.sh $LOCAL_COMMAND "$LOCAL_MESSAGE"
fi

# End of File
