#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FSWEBCAM_PID=$$
export FSWEBCAM_BINARY=fswebcam
export FSWEBCAM_ARGUMENTS="-r 1280x720 -s brightness=65% -s Contrast=50% -s Gamma=100% --jpeg 100 --no-banner"
export FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

$FSWEBCAM_BINARY $FSWEBCAM_ARGUMENTS $FSWEBCAM_IMAGE

# End of File
