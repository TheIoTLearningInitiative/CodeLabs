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

echo spanish > /tmp/hochob/language

SpeechSynthetizer.sh on espeak spanish \
    "Hola Mundo! Uno, Dos, Tres, Probando!"

StreamAudio.sh "Triki" "1.0" "$SPEECH_MP3"
echo $?

Amikoo.sh amikoo/inicial 1
Amikoo.sh amikoo/emocion 1
Amikoo.sh amikoo/porsupuesto 1
Amikoo.sh amikoo/cerebro 1
Amikoo.sh amikoo/inteledison 1

StreamAudio.sh "Tran" "1.0" "$SPEECH_MP3"
echo $?
StreamAudio.sh "Juum" "1.0" "$SPEECH_MP3"
echo $?
StreamAudio.sh "Eek'" "1.0" "$SPEECH_MP3"
echo $?

Memories.sh "5" "on" "${TOYOTA_NAME}" &
sleep 2
ConvertText.sh "$FSWEBCAM_IMAGE" "System Health"
wait
Eog.sh "$FSWEBCAM_IMAGE" &
sleep 2

KillApp.sh "eog"

# End of File
