# Applications

> Set of software functionalities.

- Corporate
  - Image
    - Name: Display
      - Station: Chakmool
      - Services Image, Eog
      - Services Sound, Mpg123
  - Video
    - Name: Main
      - Station: Chakmool
      - Services Image, Feh
      - Services Sound, Mpg123
      - Services Comms, Mqtt
- VisitorsCenter
  - Image
    - Name: Introduction
      - Station: Chakmool
  - LupeRobot
  - Music
  - Sound
    - Name: Welcome
    - Station: Chakmool
- Visitors
  - Camera
  - Drawing
  - Video

- Home
  - Introduction
    - script.audiosectionone
      - Image, Eog
      - Sound, Mpg123
  - Video
    - script.audiosectiontwo
      - Image, Feh
      - Sound, Mpg123
      - Comms, Mqtt
    - switch.luperobot
      - /home/hochob/CodeLabs/Hochob/LupeRobot/Show/LupeRobot1080p.sh &
      - /home/hochob/CodeLabs/Hochob/LupeRobot/Show/LupeRobotKill.sh
    - script.luperobot
      - hass
    - script.audiosectionthree
      - Sound, Mpg123
  - Photography
    - script.photography
      - python /home/hochob/CodeLabs/Hochob/Photography/selfie.py &
    - switch.imagescorporate
      - eog -sf /home/hochob/Images/Corporate/* &"
      - pkill -9 eog
    - switch.imagesvisitorscenter
      - eog -sf /home/hochob/Images/VisitorsCenter/* &
      - pkill -9 eog


- Peek' Perro
- Keeh Venado
- __Chakmool__ Jaguar
  - Home
- Chuwen Chango
- Ch'o' Raton
- Sootz' Murcielago
- Kaab Abeja
- Am Arana
- Ch'iich' Pajaro
- T'uut' Guacamaya
- Tunkuruchu Lechuza
- Tz'unu'un Colibri
- Kay Pescado
- Kan Culebra
- Aak Tortuga
- Aayin Cocodrilo

- Lupe Robot Memories
- Audio
- Camera
- Photography
- USB
- VLC Media Player

