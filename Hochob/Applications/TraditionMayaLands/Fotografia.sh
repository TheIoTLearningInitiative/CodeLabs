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

# AMIKOO_PICTURE amikoo/camera/picture
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "witch.mp3"
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"
# AMIKOO_PICTURE stop

# End of File
