#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIANORTE_PID=$$
export BAJACALIFORNIANORTE_NAME="BajaCaliforniaNorte"
export BAJACALIFORNIANORTE_PATH=$(readlink -f "$0")
export BAJACALIFORNIANORTE_DIRECTORY=$(dirname "$BAJACALIFORNIANORTE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $BAJACALIFORNIANORTE_PID $BAJACALIFORNIANORTE_NAME

Memories.sh "5" "off" "${BAJACALIFORNIANORTE_NAME}" &

Eog.sh "$VISITORSCENTER_IMAGE/*" &
sleep 2
Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaNorte.mp3" &
sleep 19.2
Robot.sh lupe/say "Nel"
sleep .6
Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6
Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6
Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/resetall 1
sleep 5

KillApp.sh "eog"
KillApp.sh "mpg123"

# End of File
