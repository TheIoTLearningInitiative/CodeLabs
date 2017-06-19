#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GUERRERO_PID=$$
export GUERRERO_NAME="Guerrero"
export GUERRERO_PATH=$(readlink -f "$0")
export GUERRERO_DIRECTORY=$(dirname "$GUERRERO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $GUERRERO_PID $GUERRERO_NAME

Vlc.sh "on" "$CORPORATE_VIDEO/"

# End of File
