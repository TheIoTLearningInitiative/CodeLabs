#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PUERTOVALLARTA_PID=$$
export PUERTOVALLARTA_PATH=$(readlink -f "$0")
export PUERTOVALLARTA_DIRECTORY=$(dirname "$CAMPECHE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/PuertoVallartaEnglish.mp3"
else
    Stream.sh "Juum" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/PuertoVallarta.mp3"
fi

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    ""
else
    Espeak.sh off spanish \
    ""
fi


# End of File
