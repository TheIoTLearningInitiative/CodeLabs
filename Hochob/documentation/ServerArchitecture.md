# Server Architecture

## Services

> Software functionality

- Automation
- __Camera__
- Calendar
- Communications
- LupeRobot
- __Image__
- Motion
- __Sound__
- Stream
- Usb
- __Video__
- Telegram

## Applications

> Set of software functionalities.

- Lupe Robot Memories
- Audio
- Camera
- Photography
- USB
- VLC Media Player

# Hochob Media: Official

## Option 1

- Camera
  - Visitors
- Image
  - Corporate
  - Drawing
  - VisitorsCenter
- Music
- Sound
  - LupeRobot
  - VisitorsCenter
- Video
  - Corporate
  - Visitors
- Visitors
  - [Name of Institution]
    - Camera
    - Drawing
    - Video

## Option 2, Best!

- Corporate
  - Image
  - Video
- VisitorsCenter
  - Image
  - LupeRobot
  - Music
  - Sound
    - Stations
- Visitors
  - [Name of Institution]
    - Camera
    - Drawing
    - Video

# Hochob Media: Source

- Camera
  - Fswebcam
- Image
  - Drawing
- Sound
  - SpeechSynthesizer
    - Espeak
- Video
  - /home/hochob/CodeLabs/Hochob/Photography/selfie.py
- Visitors
  - [Name of Institution]
    - Camera
    - Drawing
    - Video

# Hochob: Amikoo

- Services
- Camera
- Sound
  - Speaker
  - Microphone

# Hochob: Services

- Automation
  - HomeAssistant
    - configuration.yaml
- Camera
  - FS Webcam
    - hbsCameraFswMain.sh
- Calendar
  - Google Calendar API
    - hbsCalendarGcaMain.py
- Communications
  - MqttServer
    - VerneMQ
      - vernemq.conf
  - MqttClient
    - Mosquitto
- LupeRobot
  - Virtual
  - Remote
    - Camera
    - Movement
    - Sound
      - Microphone
      - Speaker
- Image
  - Eog
    - hbsImageEogMain.sh [files]
  - Drawing
- Motion
- Sound
  - Player
    - Mpg123
      - hbsSoundPxMpgMain.sh [file]
    - Aplay
      - hbsSoundPxAplMain.sh [file]
  - Server
    - PulseAudio
  - SpeechSynthesizer
    - hbsSoundSsEspeakMain.sh [play] [language] [input]
      - Record and Play [on]
      - Record Only [off]
- Stream
  - Chromecast
    - hbsStreamS2cMain.sh [device] [volume] [file]
  - Plex Media Server
- Usb
- Video
  - VlcMediaPlayer
    - hbsVideoVlcMain.sh [loop] [file]

# Hochob: Applications

- Audio
- Photography
- Video
  - LupeRobot
  - VisitorsCenter
- Feedback
  - Google Calendar
      - Image Welcome
    - Goodie
    - LupeRobot
      - Scripts
      - Show
      - Skills
      - Virtual
    - Lupe Picture 
      - Lupe Robot Moving through Mqtt

- Corporate
  - Image
  - Video
- VisitorsCenter
  - Image
  - LupeRobot
  - Music
  - Sound
    - Stations
- Visitors
  - [Name of Institution]
    - Camera
    - Drawing
    - Video

# Code 

- Hochob
  - hbs
  - hba

# ToDo

- Check Arguments
- Kill Daemon
- Pulse Audio Interfaces Init? Where
- How to abstract running of Apps? Should we export Services under Main.sh instead? under .profile?
  - source ~/CodeLabs/Hochob/Main.sh
  - Remove ". ~/CodeLabs/Hochob/Main.sh" from the scripts?
- HochobMedia automatic creation of estructure
  - under Main.sh test $DIR