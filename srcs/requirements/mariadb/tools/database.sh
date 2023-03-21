#!/bin/bash

service mysql start
 
sleep 5

mariadb -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

mariadb -e "CREATE USER '$USER_NAME'@'%' IDENTIFIED BY '$DB_PSWD';"

mariadb -e "GRANT ALL PRIVILEGES ON * . * TO '$USER_NAME'@'localhost';"

mariadb -e "FLUSH PRIVILEGES"

mysqld