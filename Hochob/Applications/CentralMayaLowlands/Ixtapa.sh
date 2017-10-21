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

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_DEVICE="Juum"
LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      Puedes decirme que aportaron los Mayas a la tecnología? \
      Uno, Las pirámides. \
      Dos, El cero. \
      Tres, El calendario. \
      Cuatro, El chocolate. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 2

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      Quiénes son los fundadores de Intel? \
      "
StreamText.sh $LOCAL_DEVICE english robot \
      "
      Uno, Robert Noyce, Gordon Moore. \
      Dos, Steve Allen. \
      Tres, Elon Musk. \
      Cuatro, Larry Page and Sergey Brin. \
      "      
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 1

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      Cuántos ingenieros erán cuando empezó Intel Guadalajara?
      Uno, 60. \
      Dos, 34. \
      Tres, 1200. \
      Cuatro, 15.
      " 
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 2

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      El microprocesador es el cerebro de la computadora? Sí o no?
      "
SurveyYesNo.sh $LOCAL_DEVICE spanish robot yes

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      Las fábricas de Intel son 200 veces mas limpias que un quirófano? Sí o no?
      "
SurveyYesNo.sh $LOCAL_DEVICE spanish robot no

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      Podemos encontrar el microprocesador en?
      Uno, Accesorios para las personas. \
      Dos, En la tierra. \
      Tres, En el espacio. \
      Cuatro, En todos los anteriores.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 4

StreamText.sh $LOCAL_DEVICE spanish robot \
      "
      En el sistema binario, el cero significa?
      Uno, Encendido. \
      Dos, Apagado. \
      Tres, Nada. \
      Cuatro, Todo.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 2

# End of File
