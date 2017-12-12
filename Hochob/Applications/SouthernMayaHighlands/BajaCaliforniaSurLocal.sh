#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIASUR_PID=$$
export BAJACALIFORNIASUR_NAME="BajaCaliforniaSur"
export BAJACALIFORNIASUR_PATH=$(readlink -f "$0")
export BAJACALIFORNIASUR_DIRECTORY=$(dirname "$BAJACALIFORNIASUR_PATH")

LOCAL_LANGUAGE="spanish"
LOCAL_TTS_ENGINE="espeak"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $BAJACALIFORNIASUR_PID $BAJACALIFORNIASUR_NAME

Memories.sh "280" "on" "${BAJACALIFORNIASUR_NAME}" &

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur01.mp4" &
SpeechSynthetizer.sh on espeak $LOCAL_LANGUAGE "Hola a todos"

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur02.mp4" &
sleep 6.45 && SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE "Perdon! Lo se!, Es que me emociono!"

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur03.mp4" &
sleep 2.8 && SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE "Por supuesto"

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur04.mp4" &
sleep 37.6 && SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE "En mi caso, mi cerebro esta aqui, en la caja azul!"

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur05.mp4" &
sleep 25.6 && SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE "Yo funciono con la plataforma Intel Edison"

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur06.mp4" &

LOCAL_INSTITUTION=`Name.sh`
SpeechSynthetizer.sh off $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "Muchas gracias Futuros Ingenieros del ${LOCAL_INSTITUTION}. \
    A nombre del Equipo de Intel, deseamos que hayan tenido una gan visita."

MemoriesAudio.sh "${BAJACALIFORNIASUR_NAME}"

wait

sleep 15

KillApp.sh "cvlc"
KillApp.sh "vlc"

# End of File
