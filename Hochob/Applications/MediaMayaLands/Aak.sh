#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GUANAJUATO_PID=$$
export GUANAJUATO_NAME="Guanajuato"
export GUANAJUATO_PATH=$(readlink -f "$0")
export GUANAJUATO_DIRECTORY=$(dirname "$GUANAJUATO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $GUANAJUATO_PID $GUANAJUATO_NAME

Eog.sh "$CORPORATE_IMAGE/*" &

# End of File
