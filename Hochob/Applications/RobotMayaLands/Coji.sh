#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export COJI_PID=$$
export COJI_PATH=$(readlink -f "$0")
export COJI_DIRECTORY=$(dirname "$COJI_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Robot.sh $AMIKOO_SAY \
    "Hello World. I can speak English. One, Two, Three."
else
    Robot.sh $AMIKOO_DECIR \
    "Hola Mundo. Puedo hablar Español. Uno, Dos, Tres."
fi

# End of File
