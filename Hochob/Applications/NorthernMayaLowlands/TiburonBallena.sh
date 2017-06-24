#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export TIBURONBALLENA_PID=$$
export TIBURONBALLENA_NAME="Mapimi Application"
export TIBURONBALLENA_PATH=$(readlink -f "$0")
export TIBURONBALLENA_DIRECTORY=$(dirname "$TIBURONBALLENA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Northern.sh english robot "Hi there"
else
    Northern.sh english robot "Hi Lupe, good morning"
    Northern.sh english tt "Hi Lupe, good morning"
    Northern.sh spanish robot "Hola Lupe, muy buenos dias"
    Northern.sh spanish tt "Hola Lupe, muy buenos dias"
fi

# End of File
