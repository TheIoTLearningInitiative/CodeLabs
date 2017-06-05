#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AGUASCALIENTES_PID=$$
export AGUASCALIENTES_NAME="Aguascalientes Application"
export AGUASCALIENTES_PATH=$(readlink -f "$0")
export AGUASCALIENTES_DIRECTORY=$(dirname "$AGUASCALIENTES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Memories.sh "5" "off" "${AGUASCALIENTES_NAME}" &

Eog.sh "$CORPORATE_IMAGE/*" &

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    echo
elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
    Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/Aguascalientes.mp3"
fi

kill -- -$(ps -o pgid=$AGUASCALIENTES_PID | grep -o '[0-9]*')

# End of File
