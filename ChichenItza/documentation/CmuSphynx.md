# CMU Sphynx

```sh
root@edison:~# pip install cython
Collecting cython
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:318: SNIMissingWarning: An HTTPS requ.
  SNIMissingWarning
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true .
  InsecurePlatformWarning
  Downloading Cython-0.25.2-cp27-cp27m-manylinux1_i686.whl (5.8MB)
    100% |################################| 5.8MB 17kB/s 
Installing collected packages: cython
Successfully installed cython-0.25.2
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true .
  InsecurePlatformWarning
```

```sh
root@edison:~# git clone https://github.com/drejkim/led-speech-edison.git
```

```sh
root@edison:~# cd led-speech-edison/
root@edison:~/led-speech-edison# ls
LICENSE.md  README.md  bin  blink.py  cycle.py  images  lm  speech.py

```sh
root@edison:~/led-speech-edison# cd bin/
root@edison:~/led-speech-edison/bin# ls
installPocketsphinx.sh  installPyAudio.sh  installSphinxbase.sh
root@edison:~/led-speech-edison/bin# 
```

## SphinxBase

```sh
root@edison:~/led-speech-edison/bin# ./installSphinxbase.sh
```

### Old Version

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading sphinxbase..."
wget http://downloads.sourceforge.net/project/cmusphinx/sphinxbase/0.8/sphinxbase-0.8.tar.gz
tar -xvf sphinxbase-0.8.tar.gz
rm sphinxbase-0.8.tar.gz
cd sphinxbase-0.8

# Remove sphinxbase.c -- needs to be generated on the build for Edison
rm python/sphinxbase.c

echo "Installing sphinxbase..."
./configure
make
make install

echo "Installing Python bindings..."
cd python
python setup.py install

echo "Sphinxbase installed."
```

### New Version

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading sphinxbase..."
wget https://sourceforge.net/projects/cmusphinx/files/sphinxbase/5prealpha/sphinxbase-5prealpha.tar.gz/download
tar -xvf download
rm download
cd sphinxbase-5prealpha/

echo "Installing sphinxbase..."
./configure
make
make install

cd ..
```

## Profile

```sh
root@edison:~/led-speech-edison/bin# nano ~/.profile
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
```

```sh
root@edison:~/led-speech-edison/bin# source ~/.profile
```

## PocketSphinx

```sh
root@edison:~/led-speech-edison/bin# ./installPocketsphinx.sh
```

### Old Version

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading pocketsphinx..."
wget http://sourceforge.net/projects/cmusphinx/files/pocketsphinx/0.8/pocketsphinx-0.8.tar.gz
tar -xvf pocketsphinx-0.8.tar.gz
rm pocketsphinx-0.8.tar.gz
cd pocketsphinx-0.8

# Remove pocketsphinx.c -- needs to be generated on the build for Edison
rm python/pocketsphinx.c

echo "Installing pocketsphinx..."
./configure
make
make install

echo "Installing Python bindings..."
cd python
python setup.py install

echo "Pocketsphinx installed."
```

### New Version

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading pocketsphinx..."
wget https://sourceforge.net/projects/cmusphinx/files/pocketsphinx/5prealpha/pocketsphinx-5prealpha.tar.gz/download
tar -xvf pocketsphinx-0.8.tar.gz
rm pocketsphinx-0.8.tar.gz
cd pocketsphinx-0.8

# Remove pocketsphinx.c -- needs to be generated on the build for Edison
rm python/pocketsphinx.c

echo "Installing pocketsphinx..."
./configure
make
make install

echo "Installing Python bindings..."
cd python
python setup.py install

echo "Pocketsphinx installed."
```

## Continue

```sh
root@edison:~/led-speech-edison# ls install/
pocketsphinx-0.8  sphinxbase-0.8
root@edison:~/led-speech-edison# 
```

```sh
root@edison:~/led-speech-edison/bin# opkg install libjack
root@edison:~/led-speech-edison/bin# opkg install --nodeps jack-dev
root@edison:~/led-speech-edison/bin# opkg install pulseaudio-dev
root@edison:~/led-speech-edison/bin# pip uninstall pocketsphinx
root@edison:~/led-speech-edison/bin# pip install --upgrade pocketsphinx
```



