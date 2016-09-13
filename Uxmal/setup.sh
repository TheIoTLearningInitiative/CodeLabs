echo
echo "Welcome to Uxmal Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Uxmal/

echo > /etc/opkg/base-feeds.conf
cat << EOT >> /etc/opkg/base-feeds.conf
src/gz all http://repo.opkg.net/edison/repo/all
src/gz edison http://repo.opkg.net/edison/repo/edison
src/gz core2-32 http://repo.opkg.net/edison/repo/core2-32
EOT

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip

echo
echo "Now go to CodeLabs/uxmal directory to get started!"
echo
echo "Happy Uxmal'ing!"
echo
