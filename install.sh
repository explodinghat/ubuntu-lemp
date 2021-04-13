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

sudo rm -r /etc/nginx/sites-available/default

cp ./default /etc/nginx/sites-available/default

sudo apt install php -y php-mysql -y php-fpm -y

echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php