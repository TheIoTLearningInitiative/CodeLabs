#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AGUASCALIENTES_PID=$$
export AGUASCALIENTES_NAME="Aguascalientes"
export AGUASCALIENTES_PATH=$(readlink -f "$0")
export AGUASCALIENTES_DIRECTORY=$(dirname "$AGUASCALIENTES_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $AGUASCALIENTES_PID $AGUASCALIENTES_NAME

Memories.sh "5" "off" "${AGUASCALIENTES_NAME}" &

Eog.sh $CORPORATE_IMAGE &
Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/Aguascalientes.mp3" &

sleep 85

KillApp.sh "mpg123"
KillApp.sh "eog"

# End of File
