    finish()
    {
        redis-cli shutdown
    }
    trap finish EXIT