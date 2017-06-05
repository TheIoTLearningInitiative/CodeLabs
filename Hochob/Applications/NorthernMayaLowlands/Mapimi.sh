#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MAPIMI_PID=$$
export MAPIMI_NAME="Mapimi Application"
export MAPIMI_PATH=$(readlink -f "$0")
export MAPIMI_DIRECTORY=$(dirname "$ZACATECAS_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Memories.sh "40" "on" "${MAPIMI_NAME}"
Espeak.sh off spanish "Nel Pastel Simona La Mona"
MemoriesAudio.sh "${MAPIMI_NAME}"

Stream2Chromecast.sh "Juum" "1.0" "$FFMPEG_VIDEO_AUDIO"

kill -- -$(ps -o pgid=$MAPIMI_PID | grep -o '[0-9]*')

# End of File
