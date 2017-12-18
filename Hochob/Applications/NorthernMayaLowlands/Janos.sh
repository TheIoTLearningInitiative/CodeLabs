#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export JANOS_PID=$$
export JANOS_NAME="Janos"
export JANOS_PATH=$(readlink -f "$0")
export JANOS_DIRECTORY=$(dirname "$JANOS_PATH")

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

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       En que fecha se celebra el dia Nacional del libro en Mexico? \
       Uno, 20 de Noviembre. \
       Dos, 12 de Noviembre. \
       Tres, 2 de Noviembre. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 2

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Personaje que conmemora el dia del libro? \
      "
StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Uno, Pancho Villa. \
       Dos, Sor Juana Ines de la Cruz. \
       Tres, Josefa Ortiz de Dominguez. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 2

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Desde cuando se utiliza un sistema de correos en Mexico? \
       Uno, Despues de la llegada de los espanoles. \
       Dos, Despues de la Revolucion Mexicana. \
       Tres, Desde antes de la llegada de los Espanoles. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 3

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Quienes eran los encargados de llevar los mensajes en la epoca de los aztecas? \
       Uno, Painani \
       Dos, Teopixque \
       Tres, Teotecuhtli \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Para ti, que es la tolerancia?\
       Uno, El respeto, la aceptacion y el aprecio a la diversidad. \
       Dos, El respeto, la aceptacion y el aprecio a la diversidad. \
       Tres, El respeto, la aceptacion y el aprecio a la diversidad. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Para que nos sirve porner en practica la tolerancia?\
       Uno, Para convivir sanamente. \
       Dos, Para convivir sanamente. \
       Tres, Para convivir sanamente. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Nombre del presidente que duro mas de 30 anios en el poder?\
       Uno, Porfirio Diaz \
       Dos, Francisco Villa \
       Tres, Venustiano Carranza \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Triunfo con las elecciones presidenciales de 1911?\
       Uno, Francisco I Madero \
       Dos, Francisco Villa \
       Tres, Venustiano Carranza \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Era conocido como el centauro del norte?\
       Uno, Francisco Villa \
       Dos, Francisco I Madero \
       Tres, Venustiano Carranza \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Era conocido como el baron de cuatro cienegas?\
       Uno, Venustiano Carranza \
       Dos, Francisco Villa \
       Tres, Porfirio Diaz \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1


StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Derecho que tuvimos gracias a la revolucion mexicana?\
       Uno, Francisco y Madero \
       Dos, Francisco Villa \
       Tres, El voto \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 3

# End of File
