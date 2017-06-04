#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIANORTE_PID=$$
export BAJACALIFORNIANORTE_PATH=$(readlink -f "$0")
export BAJACALIFORNIANORTE_DIRECTORY=$(dirname "$BAJACALIFORNIANORTE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Eog.sh "$APPLICATIONS_IMAGE/*" &
sleep 1
Mpg123.sh "$APPLICATIONS_SOUND/BajaCaliforniaNorte.mp3"

kill -- -$(ps -o pgid=$BAJACALIFORNIANORTE_PID | grep -o '[0-9]*')

# End of File
