#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HANDLERYESNO_PID=$$

LOCAL_IDENTIFICATION="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 0 ]
then
    answer=`$HOCHOB_SERVER_SERVICES_KEYPAD/HandlerYesNo.py`
    echo $answer
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
