#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ISLASMARIAS_PID=$$
export ISLASMARIAS_NAME="IslasMarias"
export ISLASMARIAS_PATH=$(readlink -f "$0")
export ISLASMARIAS_DIRECTORY=$(dirname "$ISLASMARIAS_PATH")

LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_TTS_ENGINE

LOCAL_QUESTION_SPANISH[0]="¿Cual fue la aportación de los Mayas?"
LOCAL_QUESTION_SPANISH[1]="¿Cual es el sistema de numeración en el que los números se representan utilizando solamente dos cifras? cero y uno"
LOCAL_QUESTION_SPANISH[2]="¿Con cuantas personas empezó Intel en Guadalajara?"
LOCAL_QUESTION_SPANISH[3]="¿Qué es lo que hace Intel?"
LOCAL_QUESTION_SPANISH[4]="¿Qué otras cosas hace Intel?"
LOCAL_QUESTION_SPANISH[5]="¿Elemento para la elaboración de los microprocesadores?"
LOCAL_QUESTION_SPANISH[6]="¿Cuantas veces es más estéril un lab de Intel que un quirófano?"
LOCAL_QUESTION_SPANISH[7]="¿Como se le llama al atuendo, ropa o traje, que utilizan los ingenieros en los labs?"
LOCAL_QUESTION_SPANISH[8]="¿Porque creen que es importante la tecnología en estos tiempos?"
LOCAL_QUESTION_SPANISH[9]="¿Qué es la inteligencia artificial?"
LOCAL_QUESTION_SPANISH[10]="¿En qué áreas creen que la tecnología podría aportar algo y porque?"

# =============================================================================
# Functions
# =============================================================================

chooseQuestion()
{
    LANGUAGE=$1
    rand=$[ $RANDOM % 6 ]
    if [ "$LANGUAGE" = "english" ]; then
        LOCAL_QUESTION=${LOCAL_QUESTION_ENGLISH[$rand]}
    else
        LOCAL_QUESTION=${LOCAL_QUESTION_SPANISH[$rand]}
    fi
}

# =============================================================================
# Main
# =============================================================================

chooseQuestion $LOCAL_LANGUAGE

StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE "${LOCAL_QUESTION}"

# End of File
