#!/bin/sh

#pacmd "set-default-sink 1"

sleep 1

sh /home/hochob/CodeLabs/Hochob/LupeAmikoo/Show/LupeAmikoo720p01.sh &
(sleep 9.5) && echo "Perdon! Lo se!, Es que me emociono" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeAmikoo/720p/Parte2_v2.mp4 &
(sleep 3.5) && echo "Por supuesto" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeAmikoo/720p/Parte3_v2.mp4 &
(sleep 39.2) && echo "En mi caso, mi cerebro esta esta ubicado en mi pecho, com pueden ver aqui!" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeAmikoo/720p/Parte4_v2.mp4 &
(sleep 26.5) && echo "Yo funciono con la plataforma Intel Edison" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeAmikoo/720p/Parte5_v2.mp4

pkill vlc

# End Of File
