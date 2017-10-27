#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CHAKMOOL_PID=$$
export CHAKMOOL_NAME="Chakmool"
export CHAKMOOL_PATH=$(readlink -f "$0")
export CHAKMOOL_DIRECTORY=$(dirname "$CHAKMOOL_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CHAKMOOL_PID $CHAKMOOL_NAME

Eog.sh "$TRADITION_INTEL_GUADALAJARA/Image/*" &

# End of File
