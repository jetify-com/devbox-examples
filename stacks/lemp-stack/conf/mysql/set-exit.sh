    finish()
    {
      mysqladmin -u root --socket=$MYSQL_UNIX_PORT shutdown
    }
    trap finish SIGINT