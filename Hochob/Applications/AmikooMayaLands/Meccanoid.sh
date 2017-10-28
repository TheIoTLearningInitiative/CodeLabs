#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MECCANOID_PID=$$
export MECCANOID_NAME="Meccanoid"
export MECCANOID_PATH=$(readlink -f "$0")
export MECCANOID_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_TRADITION="DiaDeMuertos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MECCANOID_PID $MECCANOID_NAME

LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Amikoo.sh $AMIKOO_SAY \
    "Let's dance"
else
    Amikoo.sh $AMIKOO_DECIR \
    "Vamos a bailar"
fi

Amikoo.sh $AMIKOO_DECIR \
    "Feliz dia de muertos"

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "MichaelJacksonThirllerShort.mp3"

Amikoo.sh amikoo/headright 1 && sleep .6
Amikoo.sh amikoo/headleft 1 && sleep .6
Amikoo.sh amikoo/rightup 1 && sleep .6
Amikoo.sh amikoo/leftup 1 && sleep .6
Amikoo.sh amikoo/rightfold 1 && sleep .6
Amikoo.sh amikoo/leftfold 1 && sleep .6
Amikoo.sh amikoo/moveright 1 && sleep .6
Amikoo.sh amikoo/moveleft 1 && sleep .6
Amikoo.sh amikoo/moveleft 1 && sleep .6
Amikoo.sh amikoo/moveleft 1 && sleep .6
Amikoo.sh amikoo/leftfold 1 && sleep .6
Amikoo.sh amikoo/rightfold 1 && sleep .6
Amikoo.sh amikoo/leftup 1 && sleep .6
Amikoo.sh amikoo/rightup 1 && sleep .6
Amikoo.sh amikoo/headleft 1 && sleep .6
Amikoo.sh amikoo/headright 1 && sleep .6

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
