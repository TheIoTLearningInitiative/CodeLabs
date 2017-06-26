#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GIFTUSB_PID=$$

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_INSTITUTION_NAME="$(echo "${LOCAL_INSTITUTION_NAME}" | tr -d '[:space:]')"

LOCAL_VISITORS_INSTITUTION_NAME=$VISITORS_SOURCE/$LOCAL_INSTITUTION_NAME/
LOCAL_VISITORS=$VISITORS

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cp -r $LOCAL_VISITORS_INSTITUTION_NAME $LOCAL_VISITORS

# End of File
