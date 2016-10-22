# Setup



# Digital Ocean

1. [Create Droplet](https://cloud.digitalocean.com/droplets )
   - __Choose an Image__ Distribution: Ubuntu 14.04.5 
   - __Choose a size__ $5/mo 
   - __Add block storage__ None
   - __Choose a datacenter region__
   - __Select additional options__ 
     - Private Networking
     - Backups
     - IPv6
     - User Data
   -  Add your SSH keys
   -  Finalize and create
     - How many droplets: 1
     - Choose a hostname: openstackme


```sh
root@openstackme:~# apt-get update
root@openstackme:~# apt-get install -y apache2
root@openstackme:~# apt-get install -y libapache2-mod-wsgi
root@openstackme:~# apt-get install -y python-pip
```

```sh
root@openstackme:~# cd /var/www/html/
root@openstackme:/var/www/html# ls
index.html
root@openstackme:/var/www/html# mkdir 
root@openstackme:/var/www/html# cd iot101inc
root@openstackme:/var/www/html/iot101inc# echo "Hello World" > index.html
root@openstackme:/var/www/html/iot101inc# 
```
