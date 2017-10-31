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

AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/headright && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/headleft && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/rightup && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/leftup && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/rightfold && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/leftfold && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
#Amikoo.sh amikoo/moveright && sleep .7
#Amikoo.sh amikoo/movestop && sleep .7
#Amikoo.sh amikoo/moveleft && sleep .8
#Amikoo.sh amikoo/movestop && sleep .8
#Amikoo.sh amikoo/moveleft && sleep .8
#Amikoo.sh amikoo/movestop && sleep .8
#Amikoo.sh amikoo/moveleft && sleep .7
#Amikoo.sh amikoo/movestop && sleep .7

AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/headright && sleep .7
AmikooAudio.sh spanish "eeh" && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/headleft && sleep .7
AmikooAudio.sh spanish "eeh" && sleep .7

Amikoo.sh amikoo/leftunfold && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/rightunfold && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/leftdown && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/rightdown && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/headleft && sleep .7
AmikooCommunication.sh "Intel" "Image" "Random"
Amikoo.sh amikoo/headright && sleep .7
AmikooCommunication.sh "Intel" "Image" "IntelExperienceWhatsInside.png"
# End of File
