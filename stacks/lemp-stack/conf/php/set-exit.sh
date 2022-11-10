finish()
{
      pkill -SIGINT -F $PHP_CONFDIR/php-fpm.pid
      rm $PHP_CONFDIR/php-fpm.pid
}
    trap finish SIGINT