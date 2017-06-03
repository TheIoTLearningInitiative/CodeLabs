#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_CAMERA_FSW_PID=$$
export HBS_CAMERA_FSW_ROOT=$HOCHOB_SERVER_SERVICES_CAMERA
export HBS_CAMERA_FSW_BINARY=fswebcam
export HBS_CAMERA_FSW_ARGUMENTS="-r 1280x720 -s brightness=65% -s Contrast=50% -s Gamma=100% --jpeg 100 --no-banner"
export HBS_CAMERA_FSW_REPOSITORY=$HOCHOB_SERVER_MEDIA_CAMERA_FSWEBCAM
export HBS_CAMERA_FSW_IMAGE=$HOCHOB_SERVER_MEDIA_CAMERA_FSWEBCAM_IMAGE

export PATH=$PATH:$HOCHOB_SERVER_SERVICES_CAMERA

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

$HBS_CAMERA_FSW_BINARY $HBS_CAMERA_FSW_ARGUMENTS $HBS_CAMERA_FSW_IMAGE

# End of File
