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

AmikooVoice.sh english \
    "Hello World. I can speak English. One, Two, Three."

sleep 5

AmikooVoice.sh spanish \
    "Hola Mundo. Puedo hablar Español. Uno, Dos, Tres."

sleep 5

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Hello World. I can speak English. One, Two, Three."
else
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Hola Mundo. Puedo hablar Español. Uno, Dos, Tres."
fi

# End of File
