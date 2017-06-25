#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SURVEY_PID=$$

LOCAL_LANGUAGE="$1"
LOCAL_CHARACTER="$2"
LOCAL_CORRECT="$3"

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
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Awesome"
    else
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Super"
    fi

else

    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Keep up the great work, the correct answer is ${LOCAL_CORRECT}"
    else
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Sigue participando, la respuesta correcta es ${LOCAL_CORRECT}"
    fi

fi




# End of File
