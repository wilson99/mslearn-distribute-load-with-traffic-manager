#!/bin/sh

# Install nginx
apt-get -y update
apt -y install nginx

# Remove the default page
rm /var/www/html/index.nginx-debian.html

# Create the default page for the region
wget https://github.com/wilson99/mslearn-distribute-load-with-traffic-manager/blob/master/index.$1.html -O /var/www/html/index.html
