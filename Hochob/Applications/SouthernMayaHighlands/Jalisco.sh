#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export JALISCO_PID=$$
export JALISCO_NAME="Hidalgo"
export JALISCO_PATH=$(readlink -f "$0")
export JALISCO_DIRECTORY=$(dirname "$HIDALGO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $JALISCO_PID $JALISCO_NAME

Eog.sh "$VISITORSCENTER_IMAGE/*" &

# End of File