#!/bin/bash

#run as root

sudo apt update && sudo apt install nginx

sudo apt install mariadb-server mariadb-client

mysql_secure_installation <<EOF

y
!2three456.
y
y
y
y
EOF
