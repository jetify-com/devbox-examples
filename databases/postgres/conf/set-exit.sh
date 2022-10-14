    finish()
    {
        pg_ctl stop -D $PGDATA 
    }
    trap finish EXIT SIGHUP