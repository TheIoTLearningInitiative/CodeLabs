#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export TIBURONBALLENA_PID=$$
export TIBURONBALLENA_NAME="TiburonBallena"
export TIBURONBALLENA_PATH=$(readlink -f "$0")
export TIBURONBALLENA_DIRECTORY=$(dirname "$TIBURONBALLENA_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_VOLUME=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE_VOLUME
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_TTS_ENGINE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

StreamAudio.sh $LOCAL_DEVICE $LOCAL_VOLUME "$AREA_NORTHERN_MAYA_LOWLANDS/TiburonBallena/LiftoffSpaceXFalcon9CRS10Mission.mp4"

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Imagina esto, cielo rosa, atardeceres naranjas, mucho desierto y acantilados. \
       Pero donde puedes ver esto y mas? En el planeta marte! Veamos si puedes responder un par de preguntas.
      "

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       A Marte se le conoce también como el planeta rojo? que opinas, sí o no? \
      "
SurveyYesNo.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE yes

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Cual fue la primer misión que tomó por primera vez fotos de Marte? \
      "

StreamText.sh $LOCAL_DEVICE english $LOCAL_TTS_ENGINE \
      " \
       Uno, Curiosity. \
       Dos, Spirit. \
       Tres, Sojourner. \
       Cuatro, Mariner 4.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 4

StreamText.sh $LOCAL_DEVICE english $LOCAL_TTS_ENGINE \
      " \
       Which spacecraft took the first photos of Mars? \
       One, Curiosity. \
       Two, Spirit. \
       Three, Sojourner. \
       Four, Mariner 4.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE english $LOCAL_TTS_ENGINE 4

# End of File
