#!/bin/bash

# Update UbuntuOS with patches
apt update

# Tools
apt install -y vim git unzip screen

# Apache
apt install -y apache2
rm -rf /var/www/html
ln -s /vagrant/mysite /var/www/html

systemctl status apache2

# MySQL
apt install -y mysql-server

systemctl status mysql
ps -ef | grep mysql

# PHP
apt-get php php-cli php-mysql