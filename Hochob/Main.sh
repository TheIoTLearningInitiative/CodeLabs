#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

cd ~/CodeLabs/Hochob/

export HOCHOB_ROOT=`pwd`

export HOCHOB_MEDIA=/tmp/HochobMedia/

export HOCHOB_MEDIA_MUSIC=$HOCHOB_MEDIA/Music/

export HOCHOB_MEDIA_AUDIO=$HOCHOB_MEDIA/Audio/
export HOCHOB_MEDIA_AUDIO_LUPEROBOT=$HOCHOB_MEDIA_AUDIO/LupeRobot/
export HOCHOB_MEDIA_AUDIO_VISITORSCENTER=$HOCHOB_MEDIA_AUDIO/VisitorsCenter/

export HOCHOB_MEDIA_IMAGE=$HOCHOB_MEDIA/Image/
export HOCHOB_MEDIA_IMAGE_CORPORATE=$HOCHOB_MEDIA_IMAGE/Corporate/
export HOCHOB_MEDIA_IMAGE_DRAWING=$HOCHOB_MEDIA_IMAGE/Drawing/
export HOCHOB_MEDIA_IMAGE_VISITORSCENTER=$HOCHOB_MEDIA_IMAGE/VisitorsCenter/
export HOCHOB_MEDIA_IMAGE_VISITORS=$HOCHOB_MEDIA_IMAGE/Visitors/

export HOCHOB_MEDIA_VIDEO=$HOCHOB_MEDIA/Video/
export HOCHOB_MEDIA_VIDEO_CORPORATE=$HOCHOB_MEDIA_VIDEO/Corporate/
export HOCHOB_MEDIA_VIDEO_VISITORSCENTER=$HOCHOB_MEDIA_VIDEO/VisitorsCenter/
export HOCHOB_MEDIA_VIDEO_VISITORS=$HOCHOB_MEDIA_VIDEO/Visitors/

# =============================================================================
# Functions
# =============================================================================

# Institution Identification through Google Calendar API
# If Google Calendar entry is registered then naming convention is
# YYYYMMDD-HHMMSS-InstitutionName
# If not, naming convention is
# YYYYMMDD-HHMMSS

institutionIdentification () { 
  # If Institution Identification
    # 
  # else
    # 
  echo "Tbd"
}

# =============================================================================
# Main
# =============================================================================

# End of File
