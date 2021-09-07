set -m
cp -f 50-server.cnf /etc/mysql/mariadb.conf.d/
chmod 755 /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql

mysqld_safe &
sleep 15

echo "@ creating the database and user"

mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USERNAME'@'srcs_wordpress_1.srcs_reso' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USERNAME'@'srcs_wordpress_1.srcs_reso' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"
mysql $DB_NAME < dump_file.sql
rm dump_file.sql

echo "@ done"

fg %1
sleep infinity
