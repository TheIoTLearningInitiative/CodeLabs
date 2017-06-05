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
    Espeak.sh off spanish \
    "Future Engineers! Welcome to this first hall! We called it: The Beginning. \
    Here we will remember the Mayans, the history of Intel y this Design Center. \
    Enjoy your tour!"
else
    Espeak.sh off spanish \
    "Futuros Ingenieros! Bienvenidos a esta primer sala, le llamamos: El Inicio. \
    Aqui recordaras a los Mayas, la historia de Intel y de este Centro de Disenio. \
    Que disfrutes tu recorrido!"
fi

Stream2Chromecast.sh "Juum" "1.0" "$ESPEAK_SPEECH_MP3"

kill -- -$(ps -o pgid=$VERACRUZ_PID | grep -o '[0-9]*')

# End of File
