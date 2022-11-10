    finish()
    {
      pkill nginx
    }
    trap finish SIGINT