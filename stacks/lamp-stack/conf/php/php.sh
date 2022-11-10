php-fpm -y $PHP_CONFDIR/php-fpm.conf -p $PWD -D
tail -f $PHP_CONFDIR/php-fpm.log