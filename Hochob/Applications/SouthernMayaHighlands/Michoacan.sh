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

LOCAL_INSTITUTION=`Name.sh`

#Robot.sh lupe/message \
#   "Bienvenidos ${LOCAL_INSTITUTION} a mi casa, su casa. \
#    Es un gusto conocerlos. Ya saben mi nombre, soy Lupe y \
#    hace rato estaba un poco chiveado pero ya estoy listo para mostrarles \
#    lo interesante que es el mundo de las Ciencias, la Tecnología, \
#    las Ingenierías y las Matemáticas. A nombre de cada uno de los Ingenieros \
#    que aquí trabajamos les deseamos la mejor de las experiencias. \
#    Muchas gracias por haber venido."
Espeak.sh on spanish \
    "Bienvenidos ${LOCAL_INSTITUTION} a mi casa, su casa. \
    Es un gusto conocerlos. Ya saben mi nombre, soy Lupe y \
    hace rato estaba un poco chiveado pero ya estoy listo para mostrarles \
    lo interesante que es el mundo de las Ciencias, la Tecnología, \
    las Ingenierías y las Matemáticas. A nombre de cada uno de los Ingenieros \
    que aquí trabajamos les deseamos la mejor de las experiencias. \
    Muchas gracias por haber venido."

#Robot.sh lupe/message \
#    "Ahora tomaremos una foto para el recuerdo. Acomodense mientras yo me voy a mi lugar preferido."
Espeak.sh on spanish \
    "Ahora tomaremos una foto para el recuerdo. Acomodense mientras yo me voy a mi lugar preferido."

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

sleep 5

#Robot.sh lupe/message \
#    "Estan listos?"
Espeak.sh on spanish \
    "Estan listos?"

sleep 5

#Robot.sh lupe/message \
#    "3, 2, 1, Sonrian!"
Espeak.sh on spanish \
    "3, 2, 1, Sonrian!"

Memories.sh "5" "on" "${MICHOACAN_NAME}" &
wait
Eog.sh "$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE" &

#Robot.sh lupe/message \
#    "Listo! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuros ingenieros."
Espeak.sh on spanish \
    "Listo! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuros ingenieros."

sleep 5

KillApp.sh "eog"

# End of File
