#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

# --------------------------- #
# Hochob Server Configuration #
# --------------------------- #

export HOCHOB_SERVER_CONFIGURATION=/tmp/hochob/
export HOCHOB_SERVER_CONFIGURATION_PID=$HOCHOB_SERVER_CONFIGURATION/pid/

test -d $HOCHOB_SERVER_CONFIGURATION || mkdir -p $HOCHOB_SERVER_CONFIGURATION
test -d $HOCHOB_SERVER_CONFIGURATION_PID || mkdir -p $HOCHOB_SERVER_CONFIGURATION_PID

export HOCHOB_SERVER_CONFIGURATION_DEMO=$HOCHOB_SERVER_CONFIGURATION/demo
export HOCHOB_SERVER_CONFIGURATION_LANGUAGE=$HOCHOB_SERVER_CONFIGURATION/language
export HOCHOB_SERVER_CONFIGURATION_AMIKOOAVAILABLE=$HOCHOB_SERVER_CONFIGURATION/amikooavailable

# ------------------ #
# Hochob Server Root #
# ------------------ #

cd ~/CodeLabs/Hochob/
export HOCHOB_ROOT=`pwd`

# ---------------------- #
# Hochob Server Services #
# ---------------------- #

export HOCHOB_SERVER=$HOCHOB_ROOT

export HOCHOB_SERVER_SERVICES=$HOCHOB_ROOT/Services/

export HOCHOB_SERVER_SERVICES_CAMERA=$HOCHOB_SERVER_SERVICES/Camera/
export HOCHOB_SERVER_SERVICES_CALENDAR=$HOCHOB_SERVER_SERVICES/Calendar/
export HOCHOB_SERVER_SERVICES_COMMUNICATIONS=$HOCHOB_SERVER_SERVICES/Communications/
export HOCHOB_SERVER_SERVICES_COMMUNICATIONS_MQTTCLIENT=$HOCHOB_SERVER_SERVICES_COMMUNICATIONS/MqttClient/
export HOCHOB_SERVER_SERVICES_EVENTS=$HOCHOB_SERVER_SERVICES/Events/
export HOCHOB_SERVER_SERVICES_IMAGE=$HOCHOB_SERVER_SERVICES/Image/
export HOCHOB_SERVER_SERVICES_KEYPAD=$HOCHOB_SERVER_SERVICES/Keypad/
export HOCHOB_SERVER_SERVICES_KILL=$HOCHOB_SERVER_SERVICES/Kill/
export HOCHOB_SERVER_SERVICES_LANGUAGE=$HOCHOB_SERVER_SERVICES/Language/
export HOCHOB_SERVER_SERVICES_MEMORIES=$HOCHOB_SERVER_SERVICES/Memories/
export HOCHOB_SERVER_SERVICES_AMIKOO=$HOCHOB_SERVER_SERVICES/Amikoo/
export HOCHOB_SERVER_SERVICES_AMIKOO_REMOTE=$HOCHOB_SERVER_SERVICES_AMIKOO/Remote/
export HOCHOB_SERVER_SERVICES_AMIKOO_VIRTUAL=$HOCHOB_SERVER_SERVICES_AMIKOO/Virtual/
export HOCHOB_SERVER_SERVICES_SOUND=$HOCHOB_SERVER_SERVICES/Sound/
export HOCHOB_SERVER_SERVICES_SOUND_PLAY=$HOCHOB_SERVER_SERVICES_SOUND/Play/
export HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_SERVICES_SOUND/SpeechSynthetizer/
export HOCHOB_SERVER_SERVICES_STREAM=$HOCHOB_SERVER_SERVICES/Stream/
export HOCHOB_SERVER_SERVICES_STREAM_STREAM2CHROMECAST=$HOCHOB_SERVER_SERVICES_STREAM/Stream2Chromecast/
export HOCHOB_SERVER_SERVICES_SURVEY=$HOCHOB_SERVER_SERVICES/Survey/
export HOCHOB_SERVER_SERVICES_VIDEO=$HOCHOB_SERVER_SERVICES/Video/
export HOCHOB_SERVER_SERVICES_VISITORS=$HOCHOB_SERVER_SERVICES/Visitors/

export PATH=$PATH:$HOCHOB_SERVER
export PATH=$PATH:$HOCHOB_SERVER_SERVICES
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_CAMERA
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_CALENDAR
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_COMMUNICATIONS
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_COMMUNICATIONS_MQTTCLIENT
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_EVENTS
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_IMAGE
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_KILL
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_KEYPAD
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_LANGUAGE
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_MEMORIES
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_AMIKOO
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_AMIKOO_REMOTE
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_AMIKOO_VIRTUAL
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND_PLAY
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_STREAM
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_STREAM_STREAM2CHROMECAST
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SURVEY
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_VIDEO
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_VISITORS

# ------------------- #
# Hochob Server Media #
# ------------------- #

export HOCHOB_SERVER_MEDIA=$HOME/HochobServerMedia/

export HOCHOB_SERVER_MEDIA_AREA=$HOCHOB_SERVER_MEDIA/Area/
export HOCHOB_SERVER_MEDIA_AREA_SOUTERN_MAYA_HIGHLANDS=$HOCHOB_SERVER_MEDIA_AREA/SouthernMayaHighlands
export HOCHOB_SERVER_MEDIA_AREA_CENTRAL_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA/CentralMayaLowlands
export HOCHOB_SERVER_MEDIA_AREA_NORTHERN_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA/NorthernMayaLowlands

export HOCHOB_SERVER_MEDIA_MEMORIES=$HOCHOB_SERVER_MEDIA/Memories/
export HOCHOB_SERVER_MEDIA_MEMORIES_CAMERA=$HOCHOB_SERVER_MEDIA_MEMORIES/Camera/
export HOCHOB_SERVER_MEDIA_MEMORIES_DRAWING=$HOCHOB_SERVER_MEDIA_MEMORIES/Drawing/
export HOCHOB_SERVER_MEDIA_MEMORIES_AMIKOO=$HOCHOB_SERVER_MEDIA_MEMORIES/Amikoo/
export HOCHOB_SERVER_MEDIA_MEMORIES_VIDEO=$HOCHOB_SERVER_MEDIA_MEMORIES/Video/

export HOCHOB_SERVER_MEDIA_TRADITION=$HOCHOB_SERVER_MEDIA/Tradition/
export HOCHOB_SERVER_MEDIA_TRADITION_INTEL=$HOCHOB_SERVER_MEDIA_TRADITION/Intel/
export HOCHOB_SERVER_MEDIA_TRADITION_INTEL_GUADALAJARA=$HOCHOB_SERVER_MEDIA_TRADITION/IntelGuadalajara
export HOCHOB_SERVER_MEDIA_TRADITION_VISITORS_CENTER=$HOCHOB_SERVER_MEDIA_TRADITION/VisitorsCenter
export HOCHOB_SERVER_MEDIA_TRADITION_DIADEMUERTOS=$HOCHOB_SERVER_MEDIA_TRADITION/DiaDeMuertos
export HOCHOB_SERVER_MEDIA_TRADITION_NAVIDAD=$HOCHOB_SERVER_MEDIA_TRADITION/Navidad

export HOCHOB_SERVER_MEDIA_GAMES=$HOCHOB_SERVER_MEDIA/Tradition/
export HOCHOB_SERVER_MEDIA_GAMES_LOTERIA=$HOCHOB_SERVER_MEDIA_GAMES/Loteria
export HOCHOB_SERVER_MEDIA_GAMES_CARASYGESTOS=$HOCHOB_SERVER_MEDIA_GAMES/CarasYGestos

export HOCHOB_SERVER_MEDIA_VISITORS=$HOCHOB_SERVER_MEDIA/Visitors/

# ----------------------------- #
# Hochob Server Media Executive #
# ----------------------------- #

export AREA_SOUTERN_MAYA_HIGHLANDS=$HOCHOB_SERVER_MEDIA_AREA_SOUTERN_MAYA_HIGHLANDS
export AREA_CENTRAL_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA_CENTRAL_MAYA_LOWLANDS
export AREA_NORTHERN_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA_NORTHERN_MAYA_LOWLANDS

export MEMORIES_CAMERA=$HOCHOB_SERVER_MEDIA_MEMORIES_CAMERA
export MEMORIES_DRAWING=$HOCHOB_SERVER_MEDIA_MEMORIES_DRAWING
export MEMORIES_AMIKOO=$HOCHOB_SERVER_MEDIA_MEMORIES_AMIKOO
export MEMORIES_VIDEO=$HOCHOB_SERVER_MEDIA_MEMORIES_VIDEO

export TRADITION_INTEL=$HOCHOB_SERVER_MEDIA_TRADITION_INTEL
export TRADITION_INTEL_GUADALAJARA=$HOCHOB_SERVER_MEDIA_TRADITION_INTEL_GUADALAJARA
export TRADITION_VISITORS_CENTER=$HOCHOB_SERVER_MEDIA_TRADITION_VISITORS_CENTER
export TRADITION_DIADEMUERTOS=$HOCHOB_SERVER_MEDIA_TRADITION_DIADEMUERTOS
export TRADITION_NAVIDAD=$HOCHOB_SERVER_MEDIA_TRADITION_NAVIDAD

export GAMES_LOTERIA=$HOCHOB_SERVER_MEDIA_GAMES_LOTERIA
export GAMES_CARASYGESTOS=$HOCHOB_SERVER_MEDIA_GAMES_CARASYGESTOS

export VISITORS=$HOCHOB_SERVER_MEDIA_VISITORS

# -------------------------- #
# Hochob Server Media Source #
# -------------------------- #

export HOCHOB_SERVER_MEDIA_SOURCE=$HOME/HochobServerMediaSource/

export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA=$HOCHOB_SERVER_MEDIA_SOURCE/Camera/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA/Fswebcam/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM/*.jpg
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM/FswebcamImage.jpg
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE_TEXT=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM/FswebcamImageText.jpg

export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE/Image/
export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE/Drawing/
export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING/*.jpg

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND=$HOCHOB_SERVER_MEDIA_SOURCE/Sound/

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/SpeechSynthesizer/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/SpeechSynthesizer/Speech.wav
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/SpeechSynthesizer/Speech.mp3

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/Espeak/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/*.*
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/EspeakSpeech.wav
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/EspeakSpeech.mp3

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/VoiceRss/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS/*.*
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS/VoiceRssSpeech.wav
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS/VoiceRssSpeech.mp3

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/Pico2Wave/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE/*.*
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE/Pico2WaveSpeech.wav
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE/Pico2WaveSpeech.mp3

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/Festival/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVALE/*.*
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL/FestivalSpeech.wav
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL/FestivalSpeech.mp3

export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE/Video/
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO/Ffmpeg/
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/*.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_CAMERA=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegCamera.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegVideo.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegImage.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_IMAGE_AUDIO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegImageAudio.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO_AUDIO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegVideoAudio.mp4

export HOCHOB_SERVER_MEDIA_SOURCE_VISITORS=$HOCHOB_SERVER_MEDIA_SOURCE/Visitors/

# ------------------------------------ #
# Hochob Server Media Source Executive #
# ------------------------------------ #

export FSWEBCAM_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM
export FSWEBCAM_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_ALLFILES
export FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE
export FSWEBCAM_IMAGE_TEXT=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE_TEXT

export DRAWING_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING
export DRAWING_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING_ALLFILES

export SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_SPEECH
export SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_SPEECH_MP3

export ESPEAK_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK
export ESPEAK_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_ALLFILES
export ESPEAK_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH
export ESPEAK_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH_MP3

export VOICERSS_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS
export VOICERSS_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_ALLFILES
export VOICERSS_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_SPEECH
export VOICERSS_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS_SPEECH_MP3

export PICO2WAVE_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE
export PICO2WAVE_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_ALLFILES
export PICO2WAVE_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_SPEECH
export PICO2WAVE_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_PICO2WAVE_SPEECH_MP3

export FESTIVAL_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL
export FESTIVAL_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL_ALLFILES
export FESTIVAL_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL_SPEECH
export FESTIVAL_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_FESTIVAL_SPEECH_MP3

export FFMPEG_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG
export FFMPEG_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_ALLFILES
export FFMPEG_CAMERA=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_CAMERA
export FFMPEG_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO
export FFMPEG_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_IMAGE
export FFMPEG_IMAGE_AUDIO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_IMAGE_AUDIO
export FFMPEG_VIDEO_AUDIO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO_AUDIO

export VISITORS_SOURCE=$HOCHOB_SERVER_MEDIA_SOURCE_VISITORS

# ---------------------- #
# MQ Telemetry Transport #
# ---------------------- #

#MQTT_SERVER_ADDRESS=127.0.0.1
MQTT_SERVER_ADDRESS=10.215.56.158
#MQTT_SERVER_ADDRESS=iot.eclipse.org
MQTT_SERVER_PORT=1883

# ------ #
# Amikoo #
# ------ #

AMIKOO=amikoo

# Musculoskeletal System #
## Tbd

# Nervous System #

## Voice ##
AMIKOO_HUMANVOICE=$AMIKOO/sound/speechsynthetizer
AMIKOO_TTS_ENGINE=$AMIKOO/sound/speechsynthetizer/engine
AMIKOO_TALK=$AMIKOO_HUMANVOICE/say
AMIKOO_HABLAR=$AMIKOO_HUMANVOICE/decir

## Sense ##
AMIKOO_SENSE=$AMIKOO/sense

### Sight (Vision) ###
AMIKOO_SENSE_SIGHT=$AMIKOO_SENSE/sight
AMIKOO_SENSE_SIGHT_PICTURE=$AMIKOO_SENSE_SIGHT/picture
AMIKOO_PICTURE=$AMIKOO_SENSE_SIGHT_PICTURE
AMIKOO_PICTURE=amikoo/camera/picture

### Hearing (Audition) ###
AMIKOO_SENSE_HEARING=$AMIKOO_SENSE/hearing

### Taste (Gustation) ###
#### Tbd

### Smell (Olfaction) ###
#### Tbd

### Touch (Somatosensation) ###
#### Tbd

# Communication #
AMIKOO_COMMUNICATION=$AMIKOO/tradition

## Communication :: Verbal ##
AMIKOO_AUDIO=$AMIKOO_COMMUNICATION/sound

## Communication :: Visual ##
AMIKOO_IMAGE=$AMIKOO_COMMUNICATION/image
AMIKOO_VIDEO=$AMIKOO_COMMUNICATION/video

# Expertise #
AMIKOO_SKILLS=$AMIKOO/skills
AMIKOO_GCVISIONAPI=$AMIKOO/gc/visionapi
AMIKOO_GCTRANSLATIONAPI=$AMIKOO/gc/translationapi

AMIKOO_AMAZONALEXA=$AMIKOO/amazon/alexa

AMIKOO_GOOGLEASSISTANT=$AMIKOO/google/assistant

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


# Language Identification

languageIdentification () {
    test -f $HOCHOB_SERVER_CONFIGURATION || touch $HOCHOB_SERVER_CONFIGURATION
}

# =============================================================================
# Main
# =============================================================================

languageIdentification

# End of File
