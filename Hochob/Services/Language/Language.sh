#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export LANGUAGE_PID=$$

LOCAL_COMMAND="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ -z "$1" ]
then
    cat $HOCHOB_SERVER_CONFIGURATION_LANGUAGE
else
    test -d $HOCHOB_SERVER_MEDIA_SOURCE || mkdir $HOCHOB_SERVER_MEDIA_SOURCE
    echo $LOCAL_COMMAND > $HOCHOB_SERVER_CONFIGURATION_LANGUAGE
fi

# End of File
