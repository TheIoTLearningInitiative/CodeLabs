#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CALAVERITAS_PID=$$
export CALAVERITAS_NAME="Calaveritas"
export CALAVERITAS_PATH=$(readlink -f "$0")
export CALAVERITAS_DIRECTORY=$(dirname "$CALAVERITAS_PATH")

LOCAL_TRADITION="DiaDeMuertos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CALAVERITAS_PID $CALAVERITAS_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "GhostlyMoan.mp3"
Amikoo.sh amikoo/headright 1 && sleep .6
Amikoo.sh amikoo/headleft 1 && sleep .6
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Haunting.mp3"
Amikoo.sh amikoo/moveforward 1 && sleep .1
Amikoo.sh amikoo/movestop 1 && sleep .6
Amikoo.sh amikoo/movebackward 1 && sleep .1
Amikoo.sh amikoo/movestop 1 && sleep .6

AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
