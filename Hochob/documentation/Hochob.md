# Hochob

> Hochob es un sitio arqueológico maya ubicado en el estado mexicano de Campeche, en la región denominada Los Chenes. Las primeras noticias sobre la existencia de este sitio arqueológico se debieron al investigador y explorador Teobert Maler, quien en 1887 visitó el lugar y publicó algunas fotografías en la revista Globus, en 1895. [Wikipedia](https://es.wikipedia.org/wiki/Hochob)

## Hocho Project

> Welcome to our Visitors Center, an awesome space built by an awesome team of volunteers thought to inspire young people to discover what Engineers, Scientists and Researchers and do and to motivate them to explore the Science, Technology, Engineering and Mathematics fields for their future Education through the use of hardware and software projects.

> Hochob Project is an open source storytelling type of automated system for museums, based on the Linux operating system, created by taking a wide array of ideas from a wide array of Volunteers to orchestrate a wide range of commercial and non commercial devices managed by a wide range of software technologies and programming languages, all packed into one single user interface to help volunteers tell our visitors a compelling visual and spoken story of our history, our technology and topics related to Science, Technology, Engineering and Mathematics. [Presentation](https://goo.gl/KuMWxD)

- [Visitors Center Technical Presentation Short Url](https://goo.gl/Q1cCUY)
- [Visitors Center Technical Presentation Url](https://docs.google.com/presentation/d/1PX6T6owG-0t2q98UQJUVJMPpIROTF814QXgb1-EppY0)

# ToDo

- Change HomeAssistant Default Configuration for Amikoo -> amikooheadleft
- Experience Day https://github.com/TheIoTLearningInitiative/CodeLabs/blob/Hochob/Hochob/Services/Stream/StreamAudio.sh
- Experience Day https://github.com/TheIoTLearningInitiative/CodeLabs/blob/Hochob/Hochob/Applications/RobotMayaLands/Makeblock.sh
- Season
- Main TV as Presentation, Reason to have the Museum
- https://benja.io/ as https://www.sparkfun.com/news/2516
- https://www.flaticon.es/resultados?word=vehiculos
- https://pypi.python.org/pypi/youtube_dl
- https://github.com/Rapptz/discord.py
- Discord https://discord.gg/gV2wH2

## Server

- Survey Acknowledge
- Amikoo Tradition Sound
- Amikoo Camera Picture
- Intel Bong
- Make Demo a option under HA UI
- Remove & from Vlc.sh
- Create a new service to generate random movements for Amikoo
- Robot Anatomy Training
  - Major Rework In Robot Anatomy
- Leteria 
  http://juegostradicionalesmexicanos.blogspot.mx/2010/01/juegos-de-mesa.html

## Robot

- Acknowledge termination Service Sound Speech Synthetizer by publishing __Completed__ through topic __amikoo/sound/speechsynthetizer__
- Implement Tradition Audio to play one random audios by subscribing to topic __amikoo/tradition/audio__ with messages 
  - __Name/<File>__
  - __Name/Random__
  - __Name/Stop__
- Implement Tradition Image to display one random images by subscribing to topic __amikoo/tradition/image__ with messages
  - __Name/<File>__
  - __Name/Random__
  - __Name/Stop__
- Implement Tradition video to play one random videos by subscribing to topic __amikoo/tradition/video__ with messages
  - __Name/<File>__
  - __Name/Random__
  - __Name/Stop__
- Implement Camera Picture to take pictures by subscribing to topic __amikoo/camera/picture__
