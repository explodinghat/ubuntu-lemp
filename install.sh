#!/bin/bash

#run as root

sudo apt update -y && sudo apt install nginx -y

sudo apt install mariadb-server mariadb-client

mysql_secure_installation <<EOF

y
!2three456.
y
y
y
y
EOF
