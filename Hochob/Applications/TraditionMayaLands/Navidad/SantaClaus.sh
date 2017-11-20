#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SANTACLAUS_PID=$$
export SANTACLAUS_NAME="SantaClaus"
export SANTACLAUS_PATH=$(readlink -f "$0")
export SANTACLAUS_DIRECTORY=$(dirname "$SANTACLAUS_PATH")

LOCAL_SEASON="Navidad"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $SANTACLAUS_PID $SANTACLAUS_NAME

Eog.sh "$TRADITION_NAVIDAD/Image/SantaClausVector.jpg"
sleep 1
Vlc.sh $TRADITION_NAVIDAD/Sound/SantaClauseJollyLaughSoundBibleCom.mp3
sleep 2
KillApp.sh "cvlc"
KillApp.sh "eog"

# End of File
