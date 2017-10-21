#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export QUINTANAROO_PID=$$
export QUINTANAROO_NAME="QuintanaRoo"
export QUINTANAROO_PATH=$(readlink -f "$0")
export QUINTANAROO_DIRECTORY=$(dirname "$QUINTANAROO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $QUINTANAROO_PID $QUINTANAROO_NAME

VlcVideo.sh "on" "$MEMORIES_VIDEO/*"

# End of File
