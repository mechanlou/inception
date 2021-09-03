tar -xzf latest.tar.gz
rm latest.tar.gz
mv wp-config.php wordpress/
cp -r wordpress/* /var/www/rkowalsk.42.fr/
mkdir /run/php
cp -f www.conf /etc/php/7.3/fpm/pool.d/

php-fpm7.3 -F -R
