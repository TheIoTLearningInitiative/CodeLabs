#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MONTESAZULES_PID=$$
export MONTESAZULES_PATH=$(readlink -f "$0")
export MONTESAZULES_DIRECTORY=$(dirname "$MONTESAZULES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Stream2Chromecast.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/MontesAzules.mp3"

kill -- -$(ps -o pgid=$MONTESAZULES_PID | grep -o '[0-9]*')

# End of File
