#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ZACATECAS_PID=$$
export ZACATECAS_PATH=$(readlink -f "$0")
export ZACATECAS_DIRECTORY=$(dirname "$ZACATECAS_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Memories.sh "20" "on" "${ZACATECAS_NAME}"
Espeak.sh off spanish "Nel Pastel"
MemoriesAudio.sh "${ZACATECAS_NAME}"

#kill -- -$(ps -o pgid=$ZACATECAS_PID | grep -o '[0-9]*')

# End of File
