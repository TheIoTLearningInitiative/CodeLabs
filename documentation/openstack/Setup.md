# Setup

## openstack device setup execution

```sh
root@edison:~# curl https://raw.githubusercontent.com/xe1gyq/openstack/master/device/setup.sh -o - | sh
```

## openstack device setup log

```sh
Welcome to Xe1Gyq Openstack Device Playground

--2016-08-14 18:04:12--  https://launchpad.net/python-weather-api/trunk/0.3.8/+download/pywapi-0.3.8.tar.gz
Resolving launchpad.net... 91.189.89.223, 91.189.89.222
Connecting to launchpad.net|91.189.89.223|:443... connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: https://launchpadlibrarian.net/166317636/pywapi-0.3.8.tar.gz [following]
--2016-08-14 18:04:14--  https://launchpadlibrarian.net/166317636/pywapi-0.3.8.tar.gz
Resolving launchpadlibrarian.net... 91.189.89.228, 91.189.89.229
Connecting to launchpadlibrarian.net|91.189.89.228|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 25166 (25K) [application/x-tar]
Saving to: 'pywapi-0.3.8.tar.gz'

100%[======================================>] 25,166       127KB/s   in 0.2s   

2016-08-14 18:04:15 (127 KB/s) - 'pywapi-0.3.8.tar.gz' saved [25166/25166]

pywapi-0.3.8/examples/pywapi-countries-example.py
pywapi-0.3.8/setup.py
pywapi-0.3.8/MANIFEST
pywapi-0.3.8/examples/
pywapi-0.3.8/examples/pywapi-noaa-example.py
pywapi-0.3.8/examples/pywapi-example.py
pywapi-0.3.8/pywapi.pyc
pywapi-0.3.8/LICENSE
pywapi-0.3.8/examples/pywapi-weather-com-example.py
pywapi-0.3.8/pywapi.py
pywapi-0.3.8/examples/pywapi-cities-example.py
pywapi-0.3.8/CHANGELOG
pywapi-0.3.8/README
pywapi-0.3.8/
pywapi-0.3.8/examples/pywapi-yahoo-example.py
pywapi-0.3.8/examples/get-weather.py
running build
running build_py
creating build
creating build/lib
copying pywapi.py -> build/lib
running install
running build
running build_py
running install_lib
running install_egg_info
Removing /usr/lib/python2.7/site-packages/pywapi-0.3.8-py2.7.egg-info
Writing /usr/lib/python2.7/site-packages/pywapi-0.3.8-py2.7.egg-info
Cloning into 'openstack'...
remote: Counting objects: 486, done.
remote: Compressing objects: 100% (172/172), done.
remote: Total 486 (delta 101), reused 0 (delta 0), pack-reused 307
Receiving objects: 100% (486/486), 55.97 KiB | 0 bytes/s, done.
Resolving deltas: 100% (264/264), done.
Checking connectivity... done.
Cache entry deserialization failed, entry ignored
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:318: SNIMissingWarning: An HTTPS request has been.
  SNIMissingWarning
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true SSLContext o.
  InsecurePlatformWarning
Requirement already up-to-date: pip in /usr/lib/python2.7/site-packages
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//Packages.
Updated list of available packages in /var/lib/opkg/iotkit.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/all/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-all.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-core2-32.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/edison/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-edison.
Package python-dev (2.7.3-r0.3) installed in root is up to date.
Requirement already satisfied (use --upgrade to upgrade): requests in /usr/lib/python2.7/site-packages (from -r requirements.pip (lin)
Requirement already satisfied (use --upgrade to upgrade): future in /usr/lib/python2.7/site-packages (from -r requirements.pip (line )
Requirement already satisfied (use --upgrade to upgrade): python-telegram-bot in /usr/lib/python2.7/site-packages (from -r requiremen)
Requirement already satisfied (use --upgrade to upgrade): psutil in /usr/lib/python2.7/site-packages (from -r requirements.pip (line )
Requirement already satisfied (use --upgrade to upgrade): paho-mqtt in /usr/lib/python2.7/site-packages (from -r requirements.pip (li)
Requirement already satisfied (use --upgrade to upgrade): urllib3>=1.10 in /usr/lib/python2.7/site-packages (from python-telegram-bot)
Requirement already satisfied (use --upgrade to upgrade): certifi in /usr/lib/python2.7/site-packages (from python-telegram-bot->-r r)

Now go to openstack/device directory to get started!

Work on having your credentials ready!
credentials.config

Happy Openstack'ing!

root@edison:~# 
```

## openstack device directory structure

```sh
root@edison:~# cd openstack/device/
root@edison:~/openstack/device# ls
iot101inc.py  main.py  requirements.opkg  requirements.pip  setup.sh
root@edison:~/openstack/device# 
```

## setup.sh file

```sh
echo
echo "Welcome to Xe1Gyq Openstack Device Playground"
echo

sleep 4

wget https://launchpad.net/python-weather-api/trunk/0.3.8/+download/pywapi-0.3.8.tar.gz
tar zxvf pywapi-0.3.8.tar.gz
cd pywapi-0.3.8
python setup.py build
python setup.py install
cd ..
rm -rf pywapi-0.3.8*

git clone https://github.com/xe1gyq/openstack.git
cd openstack/device

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip

echo
echo "Now go to openstack/device directory to get started!"
echo
echo "Work on having your credentials ready!"
echo "credentials.config"
echo
echo "Happy Openstack'ing!"
echo
```