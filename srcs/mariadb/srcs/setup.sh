echo "@ adding custom config file"

cp -f 50-server.cnf /etc/mysql/mariadb.conf.d/
/etc/init.d/mysql start

echo "@ creating the database and user"

mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USERNAME'@'srcs_wordpress_1.srcs_default' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USERNAME'@'srcs_wordpress_1.srcs_default' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"
mysql $DB_NAME < dump_file.sql

rm dump_file.sql

echo "@ done"

#/etc/init.d/mysql stop
sleep infinity
