#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MICHOACAN_PID=$$
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

Fswebcam.sh 5
cp $FSWEBCAM_IMAGE $MEMORIES_CAMERA

kill -- -$(ps -o pgid=$MICHOACAN_PID | grep -o '[0-9]*')

# End of File
