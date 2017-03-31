set -x

killall -9 stream2chromecast.py

cd /home/hochob/CodeLabs/Hochob/Audio/stream2chromecast
./stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne01.mp3
./stream2chromecast.py -devicename "Juum" -stop
sleep 10
./stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne02.mp3
./stream2chromecast.py -devicename "Juum" -stop
sleep 5
./stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne03.mp3
./stream2chromecast.py -devicename "Juum" -stop
sleep 3
./stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne04.mp3
./stream2chromecast.py -devicename "Juum" -stop

