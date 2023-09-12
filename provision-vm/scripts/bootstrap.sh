#!/bin/bash

# Update UbuntOS with latest patches
apt update

# Apache
apt install -y apache2
rm -rf /var/www/html
ln -s /vagrant/mystie /var/www/html
systemctl status httpd
systemctl start httpd
