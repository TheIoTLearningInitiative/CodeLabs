#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export QUERETARO_PID=$$
export QUERETARO_PATH=$(readlink -f "$0")
export QUERETARO_DIRECTORY=$(dirname "$QUERETARO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Eog.sh "$VISITORSCENTER_IMAGE/*" &

# End of File