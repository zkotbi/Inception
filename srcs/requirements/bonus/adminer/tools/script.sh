#!/bin/bash

mkdir -p /var/www/html

wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php 

chmod 644 /var/www/html/adminer.php

mv /var/www/html/adminer.php /var/www/html/index.php

rm -f /var/www/html/index.html

php -S 0.0.0.0:80 -t /var/www/html
