#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export QUERETARO_PID=$$
export QUERETARO_NAME="Queretaro"
export QUERETARO_PATH=$(readlink -f "$0")
export QUERETARO_DIRECTORY=$(dirname "$QUERETARO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $QUERETARO_PID $QUERETARO_NAME

Eog.sh "$MEMORIES_CAMERA/*" &

# End of File
