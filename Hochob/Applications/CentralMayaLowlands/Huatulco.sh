#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HUATULCO_PID=$$
export HUATULCO_PATH=$(readlink -f "$0")
export HUATULCO_DIRECTORY=$(dirname "$HUATULCO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Stream.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/HuatulcoEnglish.mp3"
else
    Stream.sh "Triki" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/Huatulco.mp3"
fi

# End of File
