#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIASUR_PID=$$
export BAJACALIFORNIASUR_NAME="Baja California Sur Application"
export BAJACALIFORNIASUR_PATH=$(readlink -f "$0")
export BAJACALIFORNIASUR_DIRECTORY=$(dirname "$BAJACALIFORNIASUR_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Memories.sh "150" "on" "${BAJACALIFORNIANORTE_NAME}" &

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur01.mp4" &
(Robot.sh lupe/inicial 1) && sleep 1.25

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur02.mp4" &
sleep 6.35 && Robot.sh lupe/emocion 1 && sleep 4

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur03.mp4" &
sleep 2.7 && Robot.sh lupe/porsupuesto 1 && sleep 2.5

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur04.mp4" &
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

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur05.mp4" &
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

Vlc.sh "off" "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaSur06.mp4" &
sleep 75

kill -- -$(ps -o pgid=$BAJACALIFORNIASUR_PID | grep -o '[0-9]*')

# End of File
