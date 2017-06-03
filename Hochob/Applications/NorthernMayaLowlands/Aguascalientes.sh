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
Mpg123.sh "$APPLICATIONS_SOUND/Aguascalientes.mp3"

kill -- -$(ps -o pgid=$AGUASCALIENTES_PID | grep -o '[0-9]*')

# End of File
