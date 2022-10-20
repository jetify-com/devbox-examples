    finish()
    {
      mysqladmin -u root --socket=$MYSQL_UNIX_PORT shutdown
      pkill -SIGINT -F $PHP_CONFDIR/php-fpm.pid
      pkill nginx
      rm $PHP_CONFDIR/php-fpm.pid
    }
    trap finish EXIT SIGHUP