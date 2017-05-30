# Server Architecture

# Services

> Software functionality

- Plex Media Server
- PulseAudio
- Telegram
- VerneMQ

# Applications

> Set of software functionalities.

- Lupe Robot Memories
- Audio
- Camera
- Photography
- USB
- VLC Media Player


# Media Repository: Official

- HochobMedia
  - Image
    - Corporate
    - Drawing
    - VisitorsCenter
  - Music
  - Sound
    - Player
      - Mpg123
      - Aplay
    - SpeechSynthesizer
      - Espeak
    - LupeRobot
    - Corporate
    - VisitorsCenter
  - Video
    - Corporate
    - VisitorsCenter
  - Visitors
    - xYz
      - Image
      - Video
      - Drawing

# Media Repository: Mirror

- HochobMediaSource
  - Camera
    - Fswebcam
  - Image
    - Drawing
    - VisitorsCenter
    - Visitors
      - zZz
  - Sound
    - Player
      - Mpg123
      - Aplay
    - SpeechSynthesizer
      - Espeak
    - LupeRobot
    - Corporate
    - VisitorsCenter
  - Video
    - Corporate
    - VisitorsCenter
    - Visitors
      - zZz

# Directory Structure

- Hochob
  - Services
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
        - Sound
      - Remote
        - Camera
        - Movement
        - Sound
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
    - Usb
    - Video
      - VlcMediaPlayer
        - hbsVideoVlcMain.sh [loop] [file]
  - Applications
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
- Amikoo
  - Services
  - Camera
  - Sound
    - Speaker
    - Microphone
  
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