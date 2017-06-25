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
else
    Northern.sh $LOCAL_LANGUAGE $LOCAL_CHARACTER "Suerte para la proxima"
fi

# End of File
