#!/bin/bash

sleep 15

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar usr/local/bin/wp 

wp core download  --path="/var/www/html/" --allow-root

rm -f /var/www/html/index.html

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i "s/database_name_here/$DB_NAME/" /var/www/html/wp-config.php

sed -i "s/username_here/$USER_NAME/" /var/www/html/wp-config.php

sed -i "s/password_here/$DB_PSWD/" /var/www/html/wp-config.php

wp user create mmardiwp mmardiwp@example.com role=author --path="/var/www/html/" -user_pass=1234 --allow-root
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir run/php
echo "creat run/php floder"
echo "star wordpress" && /usr/sbin/php-fpm7.3 -F 