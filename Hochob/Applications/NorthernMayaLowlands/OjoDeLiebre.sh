#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export OJODELIEBRE_PID=$$
export OJODELIEBRE_PATH=$(readlink -f "$0")
export OJODELIEBRE_DIRECTORY=$(dirname "$OJODELIEBRE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Stream2Chromecast.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/OjoDeLiebre.mp3"

kill -- -$(ps -o pgid=$OJODELIEBRE_PID | grep -o '[0-9]*')

# End of File
