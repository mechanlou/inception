echo "@ adding custom config file"
#chown -R mysql:mysql /var/lib/mysql
/etc/init.d/mysql start
echo "@ creating the database and user"
mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USERNAME'@'localhost' IDENTIFIED BY '$DB_PASSWORD'"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USERNAME'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"
echo "done"
sleep infinity
