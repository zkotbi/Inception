#!/bin/bash

wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php 

chmod +x /var/www/html/adminer.php

rm -f /var/www/html/index.html

php -S 0.0.0.0:80
