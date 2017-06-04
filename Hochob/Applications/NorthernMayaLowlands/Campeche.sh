#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CAMPECHE_PID=$$
export CAMPECHE_PATH=$(readlink -f "$0")
export CAMPECHE_DIRECTORY=$(dirname "$AGUASCALIENTES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Eog.sh "$CORPORATE_IMAGE/*" &
sleep 1
Mpg123.sh "$APPLICATIONS_SOUND/Aguascalientes.mp3"

kill -- -$(ps -o pgid=$CAMPECHE_PID | grep -o '[0-9]*')

# End of File
