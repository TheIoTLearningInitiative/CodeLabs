#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MICHOACAN_PID=$$
export MICHOACAN_NAME="Michoacan"
export MICHOACAN_PATH=$(readlink -f "$0")
export MICHOACAN_DIRECTORY=$(dirname "$MICHOACAN_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MICHOACAN_PID $MICHOACAN_NAME

Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6

Robot.sh lupe/say "Tomaremos algunas fotos. Estan listos?"
sleep 1
Robot.sh lupe/say "3, 2, 1, Sonrian!"
Memories.sh "5" "on" "${MICHOACAN_NAME}" &

wait

Eog.sh "$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE" &
Robot.sh lupe/say "Listo! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuros ingenieros."

sleep 2

kill -- -$(ps -o pgid=$MICHOACAN_PID | grep -o '[0-9]*')

# End of File
