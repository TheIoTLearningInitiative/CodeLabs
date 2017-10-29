#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FOTOGRAFIA_PID=$$
export FOTOGRAFIA_NAME="Fotografia"
export FOTOGRAFIA_PATH=$(readlink -f "$0")
export FOTOGRAFIA_DIRECTORY=$(dirname "$FOTOGRAFIA_PATH")

LOCAL_TRADITION="DiaDeMuertos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $FOTOGRAFIA_PID $FOTOGRAFIA_NAME

Amikoo.sh "picture"
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Witch.mp3"
sleep 3
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"

# End of File
