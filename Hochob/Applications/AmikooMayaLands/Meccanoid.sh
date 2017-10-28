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

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "MichaelJacksonThrillerShort.mp3"

sleep 10

Amikoo.sh amikoo/headright && sleep .6
Amikoo.sh amikoo/headleft && sleep .6
Amikoo.sh amikoo/moveforward && sleep .6
Amikoo.sh amikoo/movewbackward && sleep .6

sleep 14

Amikoo.sh amikoo/headright && sleep .6
Amikoo.sh amikoo/headleft && sleep .6
Amikoo.sh amikoo/rightup && sleep .6
Amikoo.sh amikoo/leftup && sleep .6
Amikoo.sh amikoo/rightfold && sleep .6
Amikoo.sh amikoo/leftfold && sleep .6
Amikoo.sh amikoo/moveright && sleep .6
Amikoo.sh amikoo/movestop && sleep .6
Amikoo.sh amikoo/moveleft && sleep .6
Amikoo.sh amikoo/movestop && sleep .6
Amikoo.sh amikoo/moveleft && sleep .6
Amikoo.sh amikoo/movestop && sleep .6
Amikoo.sh amikoo/moveleft && sleep .6
Amikoo.sh amikoo/movestop && sleep .6
Amikoo.sh amikoo/leftfold && sleep .6
Amikoo.sh amikoo/rightfold && sleep .6
Amikoo.sh amikoo/leftup && sleep .6
Amikoo.sh amikoo/rightup && sleep .6
Amikoo.sh amikoo/headleft && sleep .6
Amikoo.sh amikoo/headright && sleep .6

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
