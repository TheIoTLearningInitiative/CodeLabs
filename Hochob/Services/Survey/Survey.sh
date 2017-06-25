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

    Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER "Excelente"
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER "Awesome"
    else
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER "Super"
    fi

else

    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER "Keep up the great work"
    else
        Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER "Sigue participando"
    fi

fi




# End of File
