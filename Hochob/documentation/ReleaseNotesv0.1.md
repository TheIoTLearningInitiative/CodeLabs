# Visitors Center Release Notes v0.1

> This release notes address requirements, additions, removals and fixes about Hochob Project, the codename for our Intel Guadalajara Visitors Center. For more in depth or other information please contact current maintainers.

## Summary

Welcome to our Visitors Center, an awesome space built by an awesome team of volunteers thought to inspire young people to discover what Engineers, Scientists and Researchers do and to motivate them to explore the Science, Technology, Engineering and Mathematics fields for their future Education through the use of hardware and software technologies.

## Hocho Project

Hochob Project is an open source storytelling type of automated system for museums, based on the Linux operating system, created by taking a wide array of ideas from a wide array of Volunteers to orchestrate a wide range of commercial and non commercial devices managed by a wide range of software technologies and programming languages, all packed into one single user interface to help volunteers tell our visitors a compelling visual and spoken story of our history, our technology and topics related to Science, Technology, Engineering and Mathematics. [Presentation](https://goo.gl/KuMWxD)

## Roles

The following Volunteer roles are the most important piece for Hochob Project:

- __Captain__: Leads our future engineers around the museum and our labs to fully experience the past, present and future of our technology.
- __Techie__: Expert on integrating our technology, third party resources and feedback from the rest of the crew to enable out of the world experiences.

Both the Captains and Techies need to ramp up in a 1 hour technical introduction training. 

## Requirements

This release is based on the Architecture version 2.0, which includes the following components:

- Accounts
- Areas
- Digital Media Players
- Keypad
- Mobile Device
- Robot
- Server
- Station

## Additions

### Accounts

Accounts let you allows take advantage of existing web services. The following accounts have been enabled:

- Hochob Vc at Gmail
- Hochob Vc at Plex Media Server

### Areas

Areas lets you divide our space in physical and virtual sections. The following areas have been identified:

- Southern Maya Highlands
- Central Maya Lowlands
- Northern Maya Lowlands
- Robot Maya Lands
- Techie Maya Lands
- Console Maya Lands
- Media Maya Lands

### Digital Media Players

These devices allow us to initiate and control playback of streamed audio/visual content on high-definition television or home audio system. 4 devices are currently available:

- Chromecast Audio
  - Codename: Juum, Sonido
  - Codename: Triki, Gemela
- Chromecast Video
  - Codename: Eek', Estrella
  - Codename: Tran, Alma

### Keypad

These devices allow us to offer an interactive visit asking different type of questions to our Visitors and transform the overall tour experience. 2 virtual keypads are available:

- Yes / No
- Multiple Choice

Physical keypad will be available in future releases.

### Mobile Device

Mobile device allow our Volunteers to have all control of the Visitors Center in the palm of their hands, the User Interface is divided in the following areas:

- The Captain
- The Show
- The Robot
- The Beginning
- The Experience
- The Techie
- The Console
- The Media

See Server Applications for more information on the functionality available. Ask Current Maintainers for a deep training on their usage.

### Robot

Also known as Lupe Robot, ported from Bluetooth to MQTT protocol, functionality:

- Head Left
- Head Right
- Body Forward
- Body Backward
- Body Left
- Body Right
- Arm Left Fold
- Arm Left Unfold
- Arm Left Up
- Arm Left Down
- Arm Right Fold
- Arm Right Unfold
- Arm Right Up
- Arm Right Down

## Server .. Services

A Service is an application component to perform a specific operation. The following services have been enabled:

- Automation Home Assistant .. Home automation platform
- Camera Fswebcam .. Captures images from a V4L1/V4L2 compatible device or file
- Calendar Google .. Google Calendar notifications, Institution’s name
- Communications MQTT .. Lightweight messaging protocol optimized for high-latency or unreliable networks
- Image Convert Resize .. Resize an image
- Image Convert Text .. Add text to an image
- Image Eog .. Image viewer
- Keypad Yes No .. Yes No buttons to answer live questions Proof of Concept
- Keypad Multiple Choice .. One Two Three Four buttons to answer live questions Proof of Concept
- Keypad Handlers .. Handlers of options received from the different keypads: Yes No and Multiple Choice Proof of Concept
- Kill .. Kill processes based on name or process identification 
- Language .. Set or get default language
- Memories Image .. Memories based on images 
- Memories Audio .. Memories based on images and video
- Robot Remote .. Control the Robot
- Robot Virtual .. Simulate the Robot
- Sound Play Aplay .. Command-line sound player for ALSA soundcard driver
- Sound Play Mpg123 .. Reads one or more files or standard input or URLs and plays them on the audio device or outputs them to stdout
- Sound Play Vlc .. Multimedia player and server
- Sound PulseAudio .. Sound system for POSIX OSes
- Sound Speech Synthesizer Espeak .. Espeak is a software speech synthesizer for English, and some other languages
- Sound Speech Synthesizer VoiceRss .. Free text-to-speech (TTS) online service and free TTS API with very fast and simple integration
- Stream Stream2Chromecast .. Command line Chromecast media streamer for Linux. The tool can transcode unsupported formats in real time and play them on the Chromecast
- Stream Video .. Video streamer to Chromecast
- Stream  Audio .. Audio streamer to Chromecast
- Survey  Question .. Ask questions through media devices Proof of Concept
- Video Capture Camera .. Output video from Camera
- Video Convert Image .. Output video from Image
- Video Convert Audio Image .. Output video from Audio and Image inputs
- Video Convert Audio Video .. Output video from Audio and Image inputs
- Video Play Vlc .. Play videos
- Video Story Scene .. Create a story from a set of text and images Proof of Concept

## Server .. Applications

Applications lets you create rich and innovative ways to interact using Services. The following applications have been enabled: 

### Area: Southern Maya Highlands

- Aguascalientes .. Bienvenidos Intel, Protocolo de Seguridad
- Baja California Norte .. Bienvenidos Guadalajara Design Center
- Baja California Sur .. Lupe Robot Show
- Michoacan .. Lupe Robot Foto Grupal Proof of Concept
- Campeche .. Bienvenidos Recorrido
- Guanajuato .. Corporate Image Showcase
- Guerrero .. Corporate Video Showcase
- Hidalgo .. Visitors Center Image Showcase
- Jalisco .. Intel Guadalajara Image Showcase
- Puebla .. Drawing Showcase
- Queretaro .. Memories Image Showcase
- Quintana Roo .. Memories Videos Showcase
- Yucatan .. Camera Showcase

### Area: Central Maya Lowlands

- Acapulco .. Antes del inicio
- Cancún .. Intel
- Huatulco .. Intel GDC
- Mazatlán .. El microprocesador
- Puerto Vallarta .. Labs y Fabs

### Area: Northern Maya Lowlands

- Montes Azules .. Bienvenida Experiencia Intel
- Ojo de Liebre .. Juego Binario
- La Michilía .. Intel en el espacio
- El Cielo .. Los muones
- Mapimi .. Hasta pronto
- Sian Ka'an .. El Baile del Robot Proof of Concept
- Calakmul .. La Ciencia Proof of Concept
- Tiburón Ballena .. Planeta Marte Proof of Concept

### Area: Robot Maya Lands

- Coji .. Language
- Sphero .. Services Event Host Robot
- Movements .. Left Arm, Right Arm, Body Move, Head Move

### Area: Techie Maya Lands

- Toyota .. Check Infrastructure
- Kodak .. Reboot 
- Apple .. System Calendar
- Qualcomm .. System Audio
- SpaceX .. System Monitor
- WindRiver .. Services Event Host Server
- Bosch .. Quote of the day

### Area: Console Maya Lands

- Keypad Yes No .. Allow to answer question based on either yes or no
- Keypad Multiple Choice .. Allow to answer questions based on multiple choices

## Station

A set of computers with display and optional touchscreen running an operating system, in most cases, Windows.

## Removals

None

## Fixes

### Robot Remote Lupe

Set Sparkfun hardware pack for Intel® Edison to secure, give more stability and increase mechanical strength for stacking blocks

## Issues

### Network

A speedy enough broadband connection is required to avoid network congestion especially in audio and video streaming.

### Robot Remote Lupe

Advanced Linux Sound Architecture instability at the time to initialize, it reflects in unavailability of audio

## Robot Lupe Backup

In order to have a stable robot we need to completely rework the following subsystems:

- Embedded board
  - Migrate to Minnowboard MAX but able to easily migrate to other boards e.g. Up Board
- Operating system
  - Use a Debian based
- Motor controllers libraries enablement
  - DC Motors
  - Servo Motors
- Wiring
  - Needs to be modular to remove dependency on the board, complete rework is required

