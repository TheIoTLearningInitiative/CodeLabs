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
    Es un gusto conocerlos. Ya saben mi nombre, soy Lupe, \
    tengo  2 años robot y estudio el primer año de primaria robot. \
    Mis pasatiempos favoritos son compartir tiempo con mi familia, jugar al aire libre, \
    leer cuentos divertidos, hacer ejercicio y aprender con mis familiares y amigos \
    todo el conocimiento científico y tecnológico que está presente en nuestra vida cotidiana. \
    También soy guia en este emocionante Centro de Visitantes. \
    Hace rato estaba un poco chiveado pero ya estoy listo para mostrarles \
    lo interesante que es el mundo de las Ciencias, la Tecnología, \
    las Ingenierías y las Matemáticas. A nombre de cada uno de los Ingenieros \
    que aquí trabajamos les deseamos la mejor de las experiencias. \
    Muchas gracias por haber venido."

sleep 1

#Robot.sh lupe/message \
#    "Ahora tomaremos una foto para el recuerdo. \
#     Primero, me iré a mi lugar preferido, denme unos segundos."
Espeak.sh on spanish \
    "Ahora tomaremos una foto para el recuerdo. \
     Primero, me iré a mi lugar preferido, denme unos segundos."

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

#Robot.sh lupe/message \
#    "Estoy listo! Ahora les toca a ustedes acomodarse. \
#     Con mucho cuidado ponganse a ambos lados de mi, \
#     viendo hacia la pantalla y sonrían."
Espeak.sh on spanish \
    "Estoy listo! Ahora les toca a ustedes acomodarse. \
     Con mucho cuidado ponganse a ambos lados de mi, \
     viendo hacia la pantalla y sonrían."

sleep 15

#Robot.sh lupe/message \
#    "Están listos ${LOCAL_INSTITUTION}?"
Espeak.sh on spanish \
    "Están listos ${LOCAL_INSTITUTION}?"

sleep 5

#Robot.sh lupe/message \
#    "Ya listos? Tomemos la foto, a la cuenta de 3."
Espeak.sh on spanish \
    "Ya listos? Tomemos la foto, a la cuenta de 3."

sleep 1

#Robot.sh lupe/message \
#    "1, 2 y 3, Sonrian."
Espeak.sh on spanish \
    "1, 2 y 3, Sonrían."

Memories.sh "5" "on" "${MICHOACAN_NAME}" &
sleep 2
ConvertText.sh "$FSWEBCAM_IMAGE" "Bienvenidos ${LOCAL_INSTITUTION}"
wait
Eog.sh "$FSWEBCAM_IMAGE" &

#Robot.sh lupe/message \
#    "Listo! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuros ingenieros."
Espeak.sh on spanish \
    "Orale! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuros ingenieros."

sleep 5

KillApp.sh "eog"

# End of File
