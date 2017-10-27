#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export IMIX_PID=$$
export IMIX_NAME="Zacatecas"
export IMIX_PATH=$(readlink -f "$0")
export IMIX_DIRECTORY=$(dirname "$IMIX_PATH")

LOCAL_SEASON="Halloween"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $IMIX_PID $IMIX_NAME

LOCAL_SOUND=`find $TRADITION_DIADEMUERTOS/Sound/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"

exit 0

if [ "$LANGUAGE" = "english" ]; then
    Amikoo.sh $AMIKOO_SAY "Happy Halloween"
else
    Amikoo.sh $AMIKOO_DECIR "Feliz dia de muertos"
fi

# See implement WindRiver.sh logic, maybe Season service?

# End of File
