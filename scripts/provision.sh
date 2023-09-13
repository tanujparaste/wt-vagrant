#!/bin/bash

# Update UbuntuOS with patches
apt-get update

# Tools
apt-get install -y vim git unzip screen

# Apache
apt-get install -y apache2
rm -rf /var/www/html
ln -s /vagrant/mysite /var/www/html

systemctl status apache2

# MySQL
apt-get install -y mysql-server

systemctl status mysql

# PHP
apt-get install -y php php-cli php-mysql