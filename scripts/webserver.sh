#!/bin/bash

# Apache
apt-get install -y apache2
rm -rf /var/www/html
ln -s /vagrant/mysite /var/www/html

systemctl status apache2

# PHP
apt-get install -y php php-cli php-mysql