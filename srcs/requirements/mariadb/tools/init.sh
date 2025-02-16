service mariadb start

sleep 2

mysql --user=root -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mysql --user=root -e "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';"
mysql --user=root -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%';"
mysql --user=root -e "FLUSH PRIVILEGES;"
mysql --user=root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd';"

kill $(cat /var/run/mysqld/mysqld.pid)

sleep 5