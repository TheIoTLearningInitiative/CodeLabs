echo
echo "Welcome to Chichen Itza Playground"
echo

# Audio: Advanced Linux Sound Architecture

opkg install alsa-utils libportaudio2 libasound2 bison alsa-lib-dev alsa-utils-dev alsa-dev

echo > /home/root/.asoundrc
cat << EOT >> /home/root/.asoundrc
pcm.!default {
        type asym
        playback.pcm {
                type plug
                slave.pcm "hw:2,0"
        }
        capture.pcm {
                type plug
                slave.pcm "hw:2,0"
        }
}
EOT

# Audio: PortAudio

wget http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
tar xvf pa_stable_v190600_20161030.tgz
rm pa_stable_v190600_20161030.tgz
cd portaudio/
./configure
make
make install
cd ..

ldconfig
cat << EOT >> ~/.profile          
export LD_LIBRARY_PATH=/usr/local/lib
EOT

# Audio: PyAudio

pip install pyaudio

# Text To Speech: eSpeak

opkg install espeak
pip install pyttsx

# Speech To Text: CMU Sphynx: SphinxBase

pip install cython

wget https://sourceforge.net/projects/cmusphinx/files/sphinxbase/5prealpha/sphinxbase-5prealpha.tar.gz
tar xvf sphinxbase-5prealpha.tar.gz
rm sphinxbase-5prealpha.tar.gz
cd sphinxbase-5prealpha/
./configure
make
make install
cd ..

ldconfig
cat << EOT >> ~/.profile
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
EOT

# Speech To Text: CMU Sphynx: PocketSphinx

wget https://sourceforge.net/projects/cmusphinx/files/pocketsphinx/5prealpha/pocketsphinx-5prealpha.tar.gz
tar xvf pocketsphinx-5prealpha.tar.gz
rm pocketsphinx-5prealpha.tar.gz
cd pocketsphinx-5prealpha/
./configure
make
make install
cd ..

# Speech To Text: SpeechRecognition

pip install --upgrade SpeechRecognition
pip install wit

echo
echo "Now go to CodeLabs/ChichenItza directory to get started!"
echo
echo "Happy Chichen Itza'ing!"
echo
