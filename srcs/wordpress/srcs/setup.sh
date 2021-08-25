tar -xzf latest.tar.gz
rm latest.tar.gz
cp -r wordpress/* data/
mkdir /run/php
#cp -f www.conf /etc/php/7.3/fpm/pool.d/
php-fpm7.3 -F 
