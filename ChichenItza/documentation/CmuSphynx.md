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

```sh
root@edison:~/led-speech-edison/bin# ./installSphinxbase.sh
```

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

```sh
root@edison:~/led-speech-edison/bin# ./installPocketsphinx.sh
```


```sh
root@edison:~/led-speech-edison/bin# ./installPyAudio.sh
```


