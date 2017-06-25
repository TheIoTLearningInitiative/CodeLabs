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

Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur01.mp4" &
(Robot.sh lupe/inicial 1) && sleep 1.25

Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur02.mp4" &
sleep 6.35 && Robot.sh lupe/emocion 1 && sleep 4

Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur03.mp4" &
sleep 2.7 && Robot.sh lupe/porsupuesto 1 && sleep 2.5

Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur04.mp4" &
sleep 37.5 && Robot.sh lupe/cerebro 1
sleep 2
Robot.sh lupe/rightup 1
sleep .25
Robot.sh lupe/leftup 1
sleep .25
Robot.sh lupe/rightfold 1
sleep .25
Robot.sh lupe/leftfold 1
sleep 2

Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur05.mp4" &
sleep 25.5 && Robot.sh lupe/inteledison 1
sleep 3
Robot.sh lupe/rightdown 1
sleep .25
Robot.sh lupe/leftdown 1
sleep .25
Robot.sh lupe/rightunfold 1
sleep .25
Robot.sh lupe/leftunfold 1
sleep 2

Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur06.mp4" &
sleep 75

wait

SpeechSynthetizer.sh off espeak spanish \
"Muchas gracias futuras y futuros ingenieros!.
A nombre del equipo de Intel, deseamos que hayan tenido una gran visita."

MemoriesAudio.sh "${BAJACALIFORNIASUR_NAME}"

wait

KillApp.sh "vlc"

# End of File
