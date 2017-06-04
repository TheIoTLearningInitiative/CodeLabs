#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIASUR_PID=$$
export BAJACALIFORNIASUR_PATH=$(readlink -f "$0")
export BAJACALIFORNIASUR_DIRECTORY=$(dirname "$BAJACALIFORNIASUR_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Vlc.sh "off" "$SOUTERN_MAYA_HIGHLANDS/Silencio.mp4" &
#Vlc.sh "off" "$APPLICATIONS_VIDEO/BajaCaliforniaSur01.mp4" &
(Robot.sh lupe/inicial 1) && sleep 1.25

Vlc.sh "off" "$SOUTERN_MAYA_HIGHLANDS/Parte1_v3.mp4" &
#Vlc.sh "off" "$APPLICATIONS_VIDEO/BajaCaliforniaSur02.mp4" &
sleep 6.35 && Robot.sh lupe/emocion 1 && sleep 4

Vlc.sh "off" "$SOUTERN_MAYA_HIGHLANDS/Parte2_v2.mp4" &
#Vlc.sh "off" "$APPLICATIONS_VIDEO/BajaCaliforniaSur03.mp4" &
sleep 2.7 && Robot.sh lupe/porsupuesto 1 && sleep 2.5

Vlc.sh "off" "$SOUTERN_MAYA_HIGHLANDS/Parte3_v2.mp4" &
#Vlc.sh "off" "$APPLICATIONS_VIDEO/BajaCaliforniaSur04.mp4" &
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

Vlc.sh "off" "$SOUTERN_MAYA_HIGHLANDS/Parte4_v2.mp4" &
#Vlc.sh "off" "$APPLICATIONS_VIDEO/BajaCaliforniaSur05.mp4" &
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

Vlc.sh "off" "$SOUTERN_MAYA_HIGHLANDS/Parte5_v2.mp4" &
#Vlc.sh "off" "$APPLICATIONS_VIDEO/BajaCaliforniaSur06.mp4" &
sleep 75

kill -- -$(ps -o pgid=$BAJACALIFORNIASUR_PID | grep -o '[0-9]*')

# End of File
