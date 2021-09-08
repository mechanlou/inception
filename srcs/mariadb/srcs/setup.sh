set -m
cp -f 50-server.cnf /etc/mysql/mariadb.conf.d/
chmod 755 /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql

mysqld_safe
