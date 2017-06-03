#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export AGUASCALIENTES_PID=$$
export AGUASCALIENTES_PATH=$(readlink -f "$0")
export AGUASCALIENTES_DIRECTORY=$(dirname "$AGUASCALIENTES_PATH")

export PATH=$PATH:$AGUASCALIENTES_DIRECTORY

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Eog.sh "$HOCHOB_SERVER_MEDIA_CORPORATE_IMAGE/*" &
Mpg123.sh "$HOCHOB_SERVER_MEDIA_VISITORSCENTER_SOUND/a1.mp3"

# How to Kill

killall -9 eog
kill -9 $AGUASCALIENTES_PID

# End of File
