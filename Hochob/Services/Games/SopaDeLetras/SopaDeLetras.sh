#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SOPADELETRAS_PID=$$
export SOPADELETRAS_PATH=$(readlink -f "$0")
export SOPADELETRAS_BASEDIR=$(dirname "$SCRIPT")
export SOPADELETRAS_BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cd $SOPADELETRAS_BASEDIR
python SopaDeLetras.py

# End of File
