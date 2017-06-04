#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AGUASCALIENTES_PID=$$
export AGUASCALIENTES_PATH=$(readlink -f "$0")
export AGUASCALIENTES_DIRECTORY=$(dirname "$AGUASCALIENTES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Eog.sh "$CORPORATE_IMAGE/*" &
sleep 1
Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/Aguascalientes.mp3"

kill -- -$(ps -o pgid=$AGUASCALIENTES_PID | grep -o '[0-9]*')

# End of File
