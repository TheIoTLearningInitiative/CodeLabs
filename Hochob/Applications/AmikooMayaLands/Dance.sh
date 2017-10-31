#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export DANCE_PID=$$
export DANCE_NAME="Dance"
export DANCE_PATH=$(readlink -f "$0")
export DANCE_DIRECTORY=$(dirname "$DANCE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MECCANOID_PID $MECCANOID_NAME

Amikoo.sh amikoo/headright && sleep .8
Amikoo.sh amikoo/headleft && sleep .8
Amikoo.sh amikoo/rightup && sleep .8
Amikoo.sh amikoo/leftup && sleep .8
Amikoo.sh amikoo/rightfold && sleep .8
Amikoo.sh amikoo/leftfold && sleep .8
#Amikoo.sh amikoo/moveright && sleep .8
#Amikoo.sh amikoo/movestop && sleep .8
#Amikoo.sh amikoo/moveleft && sleep .8
#Amikoo.sh amikoo/movestop && sleep .8
#Amikoo.sh amikoo/moveleft && sleep .8
#Amikoo.sh amikoo/movestop && sleep .8
#Amikoo.sh amikoo/moveleft && sleep .8
#Amikoo.sh amikoo/movestop && sleep .8
Amikoo.sh amikoo/leftunfold && sleep .8
Amikoo.sh amikoo/rightunfold && sleep .8
Amikoo.sh amikoo/leftdown && sleep .8
Amikoo.sh amikoo/rightdown && sleep .8
Amikoo.sh amikoo/headleft && sleep .8
Amikoo.sh amikoo/headright && sleep .8

# End of File
