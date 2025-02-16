#!/bin/bash

service mariadb start

sleep 2

mysql --user=root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd' ;"
mysql --user=root -p"$db_root_pwd" -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mysql --user=root -p"$db_root_pwd" -e "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';"
mysql --user=root -p"$db_root_pwd" -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%';"
mysql --user=root -p"$db_root_pwd" -e "FLUSH PRIVILEGES;"

sleep 2

mysqladmin -u root shutdown

sleep 5

/usr/bin/mysqld_safe