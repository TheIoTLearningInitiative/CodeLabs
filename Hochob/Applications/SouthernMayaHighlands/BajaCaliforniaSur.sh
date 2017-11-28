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
$(AmikooVoice.sh spanish "Hola a todos") && sleep 1.25

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur02.mp4" &
sleep 6.35 && AmikooVoice.sh spanish "Perdon! Lo se!, Es que me emociono" && sleep 4

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur03.mp4" &
sleep 2.7 && AmikooVoice.sh spanish "Por supuesto" && sleep 2.5

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur04.mp4" &
sleep 37.5 && AmikooVoice.sh spanish "En mi caso mi cerebro, esta en mi espalda!"
sleep 2
Amikoo.sh amikoo/rightup 1
sleep .25
Amikoo.sh amikoo/leftup 1
sleep .25
Amikoo.sh amikoo/rightfold 1
sleep .25
Amikoo.sh amikoo/leftfold 1
sleep 2

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur05.mp4" &
sleep 25.5 && AmikooVoice.sh spanish "Yo funciono con la platafoma Intel Edison y Uppboard"
sleep 3
Amikoo.sh amikoo/rightdown 1
sleep .25
Amikoo.sh amikoo/leftdown 1
sleep .25
Amikoo.sh amikoo/rightunfold 1
sleep .25
Amikoo.sh amikoo/leftunfold 1
sleep 2

VlcVideo.sh off "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur06.mp4" &
sleep 75

wait

SpeechSynthetizer.sh off espeak spanish \
"Muchas gracias futuras y futuros ingenieros!.
A nombre del equipo de Intel, deseamos que hayan tenido una gran visita."

MemoriesAudio.sh "${BAJACALIFORNIASUR_NAME}"

wait

KillApp.sh "vlc"

# End of File
