#! /bin/bash

set -eux

if [ ! -d $PGDATA ]; then
    pg_ctl init -D $PGDATA
fi

pg_ctl start --log=$PG_CONFDIR/postgres.log --pgdata=$PGDATA -o "--config_file=$PG_CONFDIR/postgres.conf"