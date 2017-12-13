#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export IXTAPA_PID=$$
export IXTAPA_NAME="Ixtapa"
export IXTAPA_PATH=$(readlink -f "$0")
export IXTAPA_DIRECTORY=$(dirname "$IXTAPA_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="Juum"
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="pico2wave"

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

# End of File
