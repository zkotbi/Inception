#!/bin/bash

# service mariadb start

# sleep 2


echo "CREATE DATABASE IF NOT EXISTS $db_name;" > /tmp/init.sql
echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';" >> /tmp/init.sql
echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%';" >> /tmp/init.sql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd';" >> /tmp/init.sql
echo "FLUSH PRIVILEGES;" >> /tmp/init.sql

# mysql --user=root -p"$db_root_pwd"  -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd';"
# mysql --user=root -p"$db_root_pwd" -e "CREATE DATABASE IF NOT EXISTS $db_name;"
# mysql --user=root -p"$db_root_pwd" -e "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';"
# mysql --user=root -p"$db_root_pwd" -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%';"
# mysql --user=root -p"$db_root_pwd" -e "FLUSH PRIVILEGES;"

# kill $(cat /var/run/mysqld/mysqld.pid)

# sleep 5

# /usr/bin/mysqld_safe

mkdir -p /run/myqld

mv /tmp/init.sql /etc/mysql/init.sql

/usr/bin/mysqld_safe