#!/bin/bash

# service mariadb start

# sleep 2


# echo "CREATE DATABASE IF NOT EXISTS $db_name;" > /tmp/init.sql
# echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';" >> /tmp/init.sql
# echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%';" >> /tmp/init.sql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd';" >> /tmp/init.sql
# echo "FLUSH PRIVILEGES;" >> /tmp/init.sql


# # mysql < /tmp/init.sql

# mariadb < /tmp/init.sql > output.tab

# kill $(cat /var/run/mysqld/mysqld.pid)

# sleep 5

# /usr/bin/mysqld_safe
#!bin/sh

if [ ! -d "/var/lib/mysql/mysql" ]; then

        chown -R mysql:mysql /var/lib/mysql

        # init database
        mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm

        tfile=`mktemp`
        if [ ! -f "$tfile" ]; then
                return 1
        fi
fi

if [ ! -d "/var/lib/mysql/wordpress" ]; then

        cat << EOF > /tmp/create_db.sql
USE mysql;
FLUSH PRIVILEGES;
DELETE FROM     mysql.user WHERE User='';
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_pwd';
CREATE DATABASE $db_name CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '$db_user'@'%' IDENTIFIED by '$db_pwd';
GRANT ALL PRIVILEGES ON wordpress.* TO '$db_user'@'%';
FLUSH PRIVILEGES;
EOF
        # run init.sql
        /usr/bin/mysqld_safe --user=mysql --bootstrap < /tmp/create_db.sql
        rm -f /tmp/create_db.sql
fi

kill $(cat /var/run/mysqld/mysqld.pid)

sleep 5

/usr/bin/mysqld_safe