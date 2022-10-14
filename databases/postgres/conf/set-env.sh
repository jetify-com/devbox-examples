#! bash

export PG_BASEDIR=$(which postgres | sed -r "s/\/bin\/postgres//g")
export PG_CONFDIR=$PWD/conf/postgresql
export PGDATA=$PG_CONFDIR/data