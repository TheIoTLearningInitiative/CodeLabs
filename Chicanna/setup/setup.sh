echo
echo "Welcome to Chicanna Playground"
echo

wget https://raw.githubusercontent.com/xe1gyq/core/master/configuration/haarcascade_frontalface_alt.xml
mv haarcascade_frontalface_alt.xml ../ocvfacerecognition/filter.xml
# wget https://upload.wikimedia.org/wikipedia/commons/5/5d/Barack_Obama_family_portrait_2011.jpg
# mv Barack_Obama_family_portrait_2011.jpg imageinput.jpeg
wget https://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2015/09/1442313353nasa-small.jpg
mv 1442313353nasa-small.jpg ../ocvfacerecognition/imageinput.jpeg

echo > /etc/opkg/base-feeds.conf
cat << EOT >> /etc/opkg/base-feeds.conf
src/gz all http://repo.opkg.net/edison/repo/all
src/gz edison http://repo.opkg.net/edison/repo/edison
src/gz core2-32 http://repo.opkg.net/edison/repo/core2-32
EOT

opkg install python-dev python-opencv python-numpy

pip install pip --upgrade
pip install flask numpy

echo
echo "Now go to CodeLabs/Chicanna directory to get started!"
echo
echo "Happy Chicanna'ing!"
echo
