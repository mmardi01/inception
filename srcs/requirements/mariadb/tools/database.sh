#!/bin/bash

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start
 
sleep 5

mariadb -e "CREATE DATABASE IF NOT EXISTS $DB_NAME ;"

mariadb -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'%' IDENTIFIED BY '$DB_PSWD';"

mariadb -e "GRANT ALL PRIVILEGES ON * . * TO '$USER_NAME'@'%';"

mariadb -e "FLUSH PRIVILEGES ;"

mysqladmin shutdown

mysqld