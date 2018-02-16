#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AAYIN_PID=$$
export AAYIN_NAME="Aayin"
export AAYIN_PATH=$(readlink -f "$0")
export AAYIN_DIRECTORY=$(dirname "$AAYIN_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $AAYIN_PID $AAYIN_NAME

VlcVideo.sh "on" "$TRADITION_INTEL/Video/IntelSolutions.mp4"

# End of File
