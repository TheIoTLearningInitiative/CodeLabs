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

Amikoo.sh $AMIKOO_SAY \
    "Hello World. I can speak English. One, Two, Three."

Amikoo.sh $AMIKOO_DECIR \
    "Hola Mundo. Puedo hablar Español. Uno, Dos, Tres."

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Amikoo.sh $AMIKOO_SAY \
    "Hello World. I can speak English. One, Two, Three."
else
    Amikoo.sh $AMIKOO_DECIR \
    "Hola Mundo. Puedo hablar Español. Uno, Dos, Tres."
fi

# End of File
