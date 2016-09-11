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
