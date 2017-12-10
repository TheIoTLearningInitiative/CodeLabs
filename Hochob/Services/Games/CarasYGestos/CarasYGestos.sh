#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CARASYGESTOS_PID=$$
export CARASYGESTOS_PATH=$(readlink -f "$0")
export CARASYGESTOS_BASEDIR=$(dirname "$SCRIPT")
export CARASYGESTOS_BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

LOCAL_GAME="CarasYGestos"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_IMAGE=`find $GAMES_CARASYGESTOS/Images/ -type f | shuf -n 1`
AmikooCommunication.sh "$LOCAL_GAME" "Image" "$LOCAL_IMAGE"

# End of File
