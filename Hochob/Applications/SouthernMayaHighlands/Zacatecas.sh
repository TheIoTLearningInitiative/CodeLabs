#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ZACATECAS_PID=$$
export ZACATECAS_PATH=$(readlink -f "$0")
export ZACATECAS_DIRECTORY=$(dirname "$ZACATECAS_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Espeak.sh off spanish "hola mundo"
Fswebcam.sh 10
Ffmpeg.sh $FSWEBCAM_DIRECTORY

kill -- -$(ps -o pgid=$ZACATECAS_PID | grep -o '[0-9]*')

# End of File
