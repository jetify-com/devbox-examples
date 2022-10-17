#! bash
    finish()
    {
      nginx -p $NGINX_CONFDIR -c nginx.conf -e error.log -g "pid nginx.pid;" -s stop
    }
    trap finish EXIT SIGHUP