# Server Architecture

# Services

- Plex Media Server
- PulseAudio
- Telegram
- VerneMQ

# Applications

- Audio
- Camera
- Photography
- USB
- VLC Media Player

# Media Repository

- HochobMedia
  - Music
  - Audio
    - LupeRobot
    - VisitorsCenter
  - Photography
    - Corporate
    - Drawing
    - VisitorsCenter
    - Visitors
      - zZz
  - Video
    - Corporate
    - Photography
    - VisitorsCenter
    - Visits

# Directory Structure

- Hochob
  - Services
    - Automation
      - HomeAssistant
        - configuration.yaml
    - Camera
      - FS Webcam
        - hbsFswMain.sh
    - Calendar
      - Google Calendar API
        - hbsGcaMain.py
    - Communications
      - MQTT
        - VerneMQ 
    - Drawing
    - Lupe Robot
      - Virtual
        - Sound
      - Remote
        - Camera
        - Movement
        - Sound
          - Speaker
    - Picture
    - Sound
      - PulseAudio
      - Chromecast
    - Usb
    - Video
      - Vlc Media Player
      - Chromecast
  - Applications
    - Audio
    - Photography
    - Video
      - LupeRobot
      - VisitorsCenter
    - Feedback
    - Goodie
    - LupeRobot
      - Scripts
      - Show
      - Skills
      - Virtual
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