echo
echo "Welcome to Xe1Gyq Openstack Workstation Playground"
echo

sleep 4

apt-get update
apt-get install git

git clone https://github.com/xe1gyq/openstack.git
cd openstack/workstation

sh requirements.apt
pip install -U pip setuptools requests
pip install six --upgrade
pip install -r requirements.pip

wget https://raw.githubusercontent.com/openstack-hackathon/training-shade-sdk/master/clouds.yml

echo
echo "Now go to openstack/workstation directory to get started!"
echo "Get your Openstack Configuration clouds.yml ready
echo
echo "Happy Openstack'ing!"
echo
