#!/bin/bash


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar usr/local/bin/wp 

wp core download  --path="/var/www/html/" --allow-root

rm -f /var/www/html/index.html

wp config create --dbname=$DB_NAME --dbuser=$USER_NAME --dbpass=$DB_PSWD --dbhost=localhost  --path="/var/www/html" --allow-root
wp core install --url=localhost/ --title=mmardi --admin_user=$USER_NAME --admin_password=$DB_PSWD --admin_email=mmardi@gmail.com --skip-email  --path="/var/www/html" --allow-root


# wp user create mmardiwp mmardiwp@example.com role=author --path="/var/www/html/" -user_pass=1234 --allow-root
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir run/php
echo "creat run/php floder"
echo "star wordpress" && /usr/sbin/php-fpm7.3 -F 