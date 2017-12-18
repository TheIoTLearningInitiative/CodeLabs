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
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_CENTRAL_MAYA_HIGHLANDS_DEVICE
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_CENTRAL_MAYA_LOWLANDS_TTS_ENGINE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Puedes decirme que aportaron los Mayas a la tecnología? \
       Uno, Las pirámides. \
       Dos, El cero. \
       Tres, El calendario. \
       Cuatro, El chocolate. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 2

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Quiénes son los fundadores de Intel? \
      "
StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Uno, Robert Noyce, Gordon Moore. \
       Dos, Steve Allen. \
       Tres, Elon Musk. \
       Cuatro, Larry Page and Sergey Brin. \
      "      
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 1

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Cuántos ingenieros erán cuando empezó Intel Guadalajara? \
       Uno, 60. \
       Dos, 33. \
       Tres, 1200. \
       Cuatro, 15.
      " 
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 2

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       El microprocesador es el cerebro de la computadora? Sí o no?
      "
SurveyYesNo.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE yes

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Las fábricas de Intel son 200 veces mas limpias que un quirófano? Sí o no?
      "
SurveyYesNo.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE no

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       Podemos encontrar el microprocesador en? \
       Uno, Accesorios para las personas. \
       Dos, En la tierra. \
       Tres, En el espacio. \
       Cuatro, En todos los anteriores.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 4

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      " \
       En el sistema binario, el cero significa? \
       Uno, Encendido. \
       Dos, Apagado. \
       Tres, Nada. \
       Cuatro, Todo.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE 2

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
      "Eso es todo. Muchas gracias por tu participacion."

# End of File
