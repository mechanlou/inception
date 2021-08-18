/etc/init.d/mysql start
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "CREATE USER 'wordpress'@'localhost';"
mysql -u root -e "SET password FOR 'wordpress'@'localhost' = password('password');"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -e "FLUSH PRIVILEGES;"
sleep infinity
