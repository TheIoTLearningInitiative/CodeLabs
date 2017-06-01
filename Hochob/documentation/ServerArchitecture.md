# Server Architecture

- Software Services
- Software Applications
- Hardware Amikoo
- Hardware Stations

# Services

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

# Hochob: Amikoo

- Services
- Camera
- Sound
  - Speaker
  - Microphone

# Hochob: Applications

- Corporate
  - Image
    - Main
  - Video
    - 
- VisitorsCenter
  - Image
  - LupeRobot
  - Music
  - Sound

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

# ToDo

- Check Arguments
- Kill Daemon
- Pulse Audio Interfaces Init? Where
- How to abstract running of Apps? Should we export Services under Main.sh instead? under .profile?
  - source ~/CodeLabs/Hochob/Main.sh
  - Remove ". ~/CodeLabs/Hochob/Main.sh" from the scripts?
- HochobMedia automatic creation of estructure
  - under Main.sh test $DIR