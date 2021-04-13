#!/bin/bash

#run as root

sudo apt update -y && sudo apt install nginx -y

sudo apt install mariadb-server mariadb-client -y

mysql_secure_installation <<EOF

y
!2three456.
y
y
y
y
EOF

sudo apt install php -y php-mysql -y php-fpm -y

sudo rm /etc/php/7.4/fpm/pool.d/www.conf

cp ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

sudo rm -r /etc/nginx/sites-available/default

cp ./default /etc/nginx/sites-available/default

echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php