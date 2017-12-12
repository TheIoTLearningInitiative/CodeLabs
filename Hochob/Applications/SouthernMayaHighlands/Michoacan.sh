
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

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="NohochTata"
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="espeak"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MICHOACAN_PID $MICHOACAN_NAME

#AmikooVoice.sh spanish \
#   "Bienvenidos ${LOCAL_INSTITUTION} a mi casa, su casa. \
#    Es un gusto conocerlos. Ya saben mi nombre, soy Lupe y \
#    hace rato estaba un poco chiveado pero ya estoy listo para mostrarles \
#    lo interesante que es el mundo de las Ciencias, la Tecnología, \
#    las Ingenierías y las Matemáticas. A nombre de cada uno de los Ingenieros \
#    que aquí trabajamos les deseamos la mejor de las experiencias. \
#    Muchas gracias por haber venido."
StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
    "Bienvenidos ${LOCAL_INSTITUTION} a mi casa, su casa. \
     Es un gusto conocerlas y conocerlos. Ya saben mi nombre, soy Lupe, \
     tengo  2 años robot y estudio el primer año de primaria robot. \
     Mis pasatiempos favoritos son compartir tiempo con mi familia, jugar al aire libre, \
     leer cuentos divertidos, hacer ejercicio y aprender con mis familiares y amigos \
     todo el conocimiento científico y tecnológico que está presente en nuestra vida cotidiana. \
     También soy guia en este emocionante Centro de Visitantes. \
     Hace rato estaba un poco chiviado pero ya estoy listo para mostrarles \
     lo interesante que es el mundo de las Ciencias, la Tecnología, \
     las Ingenierías y las Matemáticas. A nombre de cada uno de los Ingenieros \
     que aquí trabajamos les deseamos la mejor de las experiencias. \
     Muchas gracias por haber venido. \
    "

sleep 1

#AmikooVoice.sh $LOCAL_LANGUAGE \
#    "Ahora tomaremos una foto para el recuerdo. \
#     Primero, me iré a mi lugar preferido, denme unos segundos."
SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "Ahora tomaremos una foto para el recuerdo. \
     Primero, me iré a mi lugar preferido, denme unos segundos. \
    "

Amikoo.sh amikoo/headright 1
sleep .6
Amikoo.sh amikoo/headleft 1
sleep .6

Amikoo.sh amikoo/moveright 1
sleep 1.6
Amikoo.sh amikoo/movestop 1
sleep .6
Amikoo.sh amikoo/moveforward 1
sleep 4.5
Amikoo.sh amikoo/movestop 1
sleep .6
Amikoo.sh amikoo/moveright 1
sleep 3.6
Amikoo.sh amikoo/movestop 1
sleep .6

#AmikooVoice.sh $LOCAL_LANGUAGE \
#    "Estoy listo! Ahora les toca a ustedes acomodarse. \
#     Con mucho cuidado ponganse a ambos lados de mi, \
#     viendo hacia la pantalla y sonrían."
SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "Estoy listo! Ahora les toca a ustedes acomodarse. \
     Con mucho cuidado ponganse a ambos lados de mi, \
     viendo hacia la pantalLOCAL_TTS_ENGINEla y sonrían. \
    "

FfmpegCamera.sh 20 &

sleep 15

#AmikooVoice.sh $LOCAL_LANGUAGE \
#    "Están listos ${LOCAL_INSTITUTION}?"
SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "Están listas? listos? ${LOCAL_INSTITUTION}?"

sleep 5

#AmikooVoice.sh $LOCAL_LANGUAGE \
#    "Tomemos la foto, a la cuenta de 3."
SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "Tomemos la foto, a la cuenta de 3."

sleep 1

#AmikooVoice.sh $LOCAL_LANGUAGE \
#    "1, 2 y 3, Sonrian."
SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "1, 2 y 3, Sonrían."

Memories.sh "5" "on" "${MICHOACAN_NAME}" &
sleep 2
ConvertText.sh "$FSWEBCAM_IMAGE" "Bienvenidos ${LOCAL_INSTITUTION}"
wait
Eog.sh "$FSWEBCAM_IMAGE" &

#AmikooVoice.sh $LOCAL_LANGUAGE \
#    "Listo! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuras y futuros ingenieros."
SpeechSynthetizer.sh on $LOCAL_TTS_ENGINE $LOCAL_LANGUAGE \
    "Orale! Tenemos nuestra foto del recuerdo. A iniciar con el recorrido futuras y futuros ingenieros."

sleep 5

KillApp.sh "eog"

# End of File
