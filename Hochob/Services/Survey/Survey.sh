#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SURVEY_PID=$$

LOCAL_DEVICE="$1"
LOCAL_LANGUAGE="$2"
LOCAL_CHARACTER="$3"
LOCAL_CORRECT="$4"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_OPTION=`KeypadOption.sh`

if [ "$LOCAL_OPTION" = "$LOCAL_CORRECT" ]; then

    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Awesome"
    else
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Super"
    fi

else

    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Keep up the great work, the correct answer is ${LOCAL_CORRECT}"
    else
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Sigue participando, la respuesta correcta es ${LOCAL_CORRECT}"
    fi

fi




# End of File
