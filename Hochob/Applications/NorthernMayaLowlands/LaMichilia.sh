#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export LAMICHILIA_PID=$$
export LAMICHILIA_PATH=$(readlink -f "$0")
export LAMICHILIA_DIRECTORY=$(dirname "$LAMICHILIA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Stream2Chromecast.sh "Eek'" "1.0" "$AREA_CENTRAL_MAYA_LOWLANDS/LaMichilia.mp3"

kill -- -$(ps -o pgid=$LAMICHILIA_PID | grep -o '[0-9]*')

# End of File
