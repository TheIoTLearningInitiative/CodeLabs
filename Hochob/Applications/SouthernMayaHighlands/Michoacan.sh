#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MICHOACAN_PID=$$
export MICHOACAN_NAME="Michoacan Application"
export MICHOACAN_PATH=$(readlink -f "$0")
export MICHOACAN_DIRECTORY=$(dirname "$MICHOACAN_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6

RobotVirtual.sh "Tomaremos algunas fotos! Estan listos?"
sleep 1
RobotVirtual.sh "3, 2, 1, Sonrian!"
Memories.sh "10" "on" "${MICHOACAN_NAME}" &

wait

kill -- -$(ps -o pgid=$MICHOACAN_PID | grep -o '[0-9]*')

# End of File
