#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CALAKMUL_PID=$$
export CALAKMUL_NAME="Mapimi Application"
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
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh off espeak english \
    "To be written"
else
    SpeechSynthetizer.sh off espeak spanish \
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

Stream.sh "Eek'" "1.0" "$SPEECH_MP3"

# End of File
