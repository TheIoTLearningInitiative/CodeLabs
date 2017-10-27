#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HIDALGO_PID=$$
export HIDALGO_NAME="Hidalgo"
export HIDALGO_PATH=$(readlink -f "$0")
export HIDALGO_DIRECTORY=$(dirname "$HIDALGO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $HIDALGO_PID $HIDALGO_NAME

Eog.sh "$TRADITION/VisitorsCenter/Image/*" &

# End of File
