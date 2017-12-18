#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FESTIVAL_PID=$$
export FESTIVAL_BINARY=festival
#export FESTIVAL_COMMANDLINE="--tts --pipe"
export FESTIVAL_COMMANDLINE="--tts"
export FESTIVAL_CONVERSION="iconv -f utf-8 -t iso-8859-1"
export FESTIVAL_LANGUAGE="--language"
export FESTIVAL_FILE="/tmp/festival"

LOCAL_LANGUAGE="$1"
LOCAL_TEXT="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then

    export FESTIVAL_LANGUAGE="${FESTIVAL_LANGUAGE} ${LOCAL_LANGUAGE}"
    export FESTIVAL_TEXT="$LOCAL_TEXT"
    echo "$FESTIVAL_TEXT" | $FESTIVAL_CONVERSION > $FESTIVAL_FILE

    # echo "${FESTIVAL_TEXT}" | $FESTIVAL_CONVERSION | $FESTIVAL_BINARY $FESTIVAL_COMMANDLINE $FESTIVAL_LANGUAGE 
    # $FESTIVAL_BINARY $FESTIVAL_COMMANDLINE $FESTIVAL_FILE

    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        # echo "(set! voice_default voice_ked_diphone)" > ~/.festivalrc
        echo "(set! voice_default voice_rab_diphone)" > ~/.festivalrc
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        echo "(set! voice_default voice_JuntaDeAndalucia_es_sf_diphone)" > ~/.festivalrc
        echo "(set! voice_default voice_JuntaDeAndalucia_es_pa_diphone)" > ~/.festivalrc
    fi

    cat $FESTIVAL_FILE | text2wave > $FESTIVAL_SPEECH

    ffmpeg -y -i $FESTIVAL_SPEECH $FESTIVAL_SPEECH_MP3

    cp $FESTIVAL_SPEECH $SPEECH
    cp $FESTIVAL_SPEECH_MP3 $SPEECH_MP3

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
