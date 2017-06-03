#!/bin/sh

#set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export EOG_PID=$$
export EOG_ROOT=$HOCHOB_SERVER_SERVICES_IMAGE
export EOG_BINARY=eog
export EOG_ARGUMENTS="-sf"

LOCAL_FILES="$1"

export PATH=$PATH:$EOG_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    killall -9 $EOG_BINARY
    $EOG_BINARY  $EOG_ARGUMENTS $LOCAL_FILES &
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
