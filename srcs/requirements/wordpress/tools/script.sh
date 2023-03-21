#!/bin/bash

wget http://wordpress.org/latest.tar.gz

tar xfz latest.tar.gz

mv wordpress/* ./var/www/html/

rm -f latest.tar.gz /var/www/html/index.html

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i "s/database_name_here/$DB_NAME/" /var/www/html/wp-config.php

sed -i "s/username_here/$USER_NAME/" /var/www/html/wp-config.php

sed -i "s/password_here/$DB_PSWD/" /var/www/html/wp-config.php

