#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export EOG_PID=$$
export EOG_BINARY=eog
export EOG_ARGUMENTS="-sf"

LOCAL_FILES="$1"

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
    if [ -f "${LOCAL_FILES}" ]; then
        export EOG_ARGUMENTS="-f"
    fi
    $EOG_BINARY $EOG_ARGUMENTS $LOCAL_FILES &
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
