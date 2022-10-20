#! bash
export MYSQL_BASEDIR=$(which mariadb | sed -r "s/\/bin\/mariadb//g")
export MYSQL_HOME=$PWD/conf/mysql
export MYSQL_DATADIR=$MYSQL_HOME/data
export MYSQL_UNIX_PORT=$MYSQL_HOME/mysql.sock
export MYSQL_PID_FILE=$MYSQL_HOME/mysql.pid

export PHP_CONFDIR=$PWD/conf/php
export NGINX_CONFDIR=$PWD/conf/nginx