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

rm -f $FSWEBCAM_DIRECTORY/*

Espeak.sh off spanish "Bienvenidos Futuros Ingenieros"
Fswebcam.sh 10
FfmpegAudio.sh $ESPEAK_SPEECH_MP3 $FSWEBCAM_DIRECTORY

#kill -- -$(ps -o pgid=$ZACATECAS_PID | grep -o '[0-9]*')

# End of File
