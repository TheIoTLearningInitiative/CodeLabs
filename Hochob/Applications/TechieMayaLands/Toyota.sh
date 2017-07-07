#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export TOYOTA_PID=$$
export TOYOTA_NAME="Zacatecas"
export TOYOTA_PATH=$(readlink -f "$0")
export TOYOTA_DIRECTORY=$(dirname "$TOYOTA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $TOYOTA_PID $TOYOTA_NAME

SpeechSynthetizer.sh on espeak spanish \
    "Hola Mundo"

Stream.sh "Triki" "1.0" "$SPEECH_MP3"
Stream.sh "Tran" "1.0" "$SPEECH_MP3"
Stream.sh "Juum" "1.0" "$SPEECH_MP3"
Stream.sh "Eek'" "1.0" "$SPEECH_MP3"

Memories.sh "5" "on" "${ZACATECAS_NAME}" &
sleep 2
ConvertText.sh "$FSWEBCAM_IMAGE" "System Health"
wait
Eog.sh "$FSWEBCAM_IMAGE" &

sync

KillApp.sh "eog"

# End of File
