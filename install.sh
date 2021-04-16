#!/bin/bash

#run as root

sudo apt update -y && sudo apt install nginx -y

sudo systemctl restart nginx 

sudo apt install mariadb-server -y mariadb-client -y

mysql_secure_installation <<EOF

y
!2three456.
y
y
y
y
EOF

sudo apt install php-mysql -y php-fpm -y

sudo apt install php -y

sudo rm /etc/php/7.4/fpm/pool.d/www.conf

cp ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

sudo rm -r /etc/nginx/sites-available/default

cp ./default /etc/nginx/sites-available/default

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

#Optionally, we can move wp-cli.phar to a folder and rename it to wp. This will help us use the WP-CLI commands by just typing ‘wp’ at the start of the commands.
sudo mv wp-cli.phar /usr/local/bin/wp


