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

Robot.sh lupe/message "Tomaremos algunas fotos. Acomodense mientras yo me voy a mi lugar preferido"

Robot.sh lupe/message "?"

Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6

Robot.sh lupe/moveleft 1
sleep 1.6
Robot.sh lupe/movestop 1
sleep .6
Robot.sh lupe/moveforward 1
sleep 4.5
Robot.sh lupe/movestop 1
sleep .6
Robot.sh lupe/moveleft 1
sleep 3.6
Robot.sh lupe/movestop 1
sleep .6

Robot.sh lupe/message "Estan listos?"

sleep 3

Robot.sh lupe/message "3, 2, 1, Sonrian!"
Memories.sh "5" "on" "${MICHOACAN_NAME}" &

wait

Eog.sh "$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE" &
Robot.sh lupe/message "Listo! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuros ingenieros."

sleep 5

KillApp.sh "eog"

# End of File
