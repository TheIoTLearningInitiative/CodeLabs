# http://192.168.1.73/led?params=1

protocol="http://"
ip=$1
led="/led?params="
on="0"
off="1"

url=$protocol$ip

echo "General Query.."
echo $url
echo
echo "Led Query On"
echo $url$led$on
echo
echo "Led Query Off"
echo $url$led$off

