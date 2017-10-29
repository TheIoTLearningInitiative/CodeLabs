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
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Let's dance"
else
    AmikooVoice.sh $LOCAL_LANGUAGE \
    "Vamos a bailar"
fi

AmikooCommunication.sh "DiaDeMuertos" "Audio" "MichaelJacksonThrillerShort.mp3"

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

AmikooCommunication.sh "DiaDeMuertos" "Audio" "Stop"

# End of File
