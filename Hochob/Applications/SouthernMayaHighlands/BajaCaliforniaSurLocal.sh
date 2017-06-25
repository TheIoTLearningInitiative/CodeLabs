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

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur01.mp4" &
Robot.sh lupe/say "Hola a todos"

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur02.mp4" &
sleep 6.35 && Robot.sh lupe/say "Perdon! Lo se!, Es que me emociono!"

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur03.mp4" &
sleep 2.7 && Robot.sh lupe/say "Por supuesto"

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur04.mp4" &
sleep 37.5 && Robot.sh lupe/say "En mi caso, mi cerebro esta aqui, en la caja azul!" 

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur05.mp4" &
sleep 25.5 && Robot.sh lupe/say "Yo funciono con la plataforma Intel Edison"

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur06.mp4" &

LOCAL_INSTITUTION=`Name.sh`
SpeechSynthetizer.sh off espeak spanish \
"Muchas gracias Futuros Ingenieros del ${LOCAL_INSTITUTION}.
A nombre del Equipo de Intel, deseamos que hayan tenido una gan visita."

MemoriesAudio.sh "${BAJACALIFORNIASUR_NAME}"

wait

sleep 15

KillApp.sh "cvlc"
KillApp.sh "vlc"

# End of File
