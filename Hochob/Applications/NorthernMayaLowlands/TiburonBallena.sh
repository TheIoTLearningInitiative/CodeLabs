#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export TIBURONBALLENA_PID=$$
export TIBURONBALLENA_NAME="Mapimi Application"
export TIBURONBALLENA_PATH=$(readlink -f "$0")
export TIBURONBALLENA_DIRECTORY=$(dirname "$TIBURONBALLENA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "To be written"
else
    VoiceRss.sh off spanish \
    "Hola Lupe muy buenos dias"
    Stream.sh "Eek'" "1.0" "$VOICERSS_SPEECH_MP3"
    Espeak.sh off spanish \
    "Buenos dias! Estoy listo para platicar sobre el espacio"
    Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"
fi

# End of File
