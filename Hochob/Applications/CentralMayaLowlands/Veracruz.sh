#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export VERACRUZ_PID=$$
export VERACRUZ_PATH=$(readlink -f "$0")
export VERACRUZ_DIRECTORY=$(dirname "$VERACRUZ_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh off espeak english \
    "Hi There"
else
    SpeechSynthetizer.sh off espeak spanish \
    "Hola a todos"
fi

Stream.sh "Juum" "1.0" "$SPEECH_MP3"

# kill -- -$(ps -o pgid=$VERACRUZ_PID | grep -o '[0-9]*')

# End of File
