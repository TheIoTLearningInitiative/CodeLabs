#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CAMPECHE_PID=$$
export CAMPECHE_NAME="Campeche"
export CAMPECHE_PATH=$(readlink -f "$0")
export CAMPECHE_DIRECTORY=$(dirname "$CAMPECHE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CAMPECHE_PID $CAMPECHE_NAME

Eog.sh "$FSWEBCAM_IMAGE" &
sleep 1
Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/Campeche.mp3" &

sleep 28

KillApp.sh "cvlc"
KillApp.sh "eog"

# End of File
