#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CALAKMUL_PID=$$
export CALAKMUL_NAME="Calakmul"
export CALAKMUL_PATH=$(readlink -f "$0")
export CALAKMUL_DIRECTORY=$(dirname "$CALAKMUL_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_TTS_ENGINE

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
        "To be written"
else
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
        "La ciencia es muy divertida, es la curiosidad sobre el mundo y cómo se comporta. \
         Es observarlo, escucharlo y registrar lo que se aprende. \
         Te gustaría entender porqué la Tierra gira alrededor del Sol? \
         Porqué las cosas caen hacia el suelo? \
         Que hace a los pájaros volar? \
         El científico es una persona que se dedica a entender el mundo y saber como se comporta. \
         Cualquiera puede pensar como un científico, y a ti, te gustaría ser científico? \
        "
fi

#Los que aplican los descubrimientos de la ciencia para hacer cosas útiles se llaman Ingenieros.

# End of File
