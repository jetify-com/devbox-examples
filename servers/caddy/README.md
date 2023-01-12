# caddy-2.6.2

## caddy Notes

You can customize the config used by the caddy service by modifying the Caddyfile in devbox.d/caddy, or by changing the CADDY_CONFIG environment variable to point to a custom config. The custom config must be either JSON or Caddyfile format.

## Services

* caddy

Use `devbox services start|stop [service]` to interact with services

## This plugin creates the following helper files

* /Users/johnlago/src/devbox-examples/databases/redis/devbox.d/caddy/Caddyfile
* /Users/johnlago/src/devbox-examples/databases/redis/devbox.d/web/index.html

## This plugin sets the following environment variables

* CADDY_CONFIG=/Users/johnlago/src/devbox-examples/databases/redis/devbox.d/caddy/Caddyfile
* CADDY_LOG_DIR=/Users/johnlago/src/devbox-examples/databases/redis/.devbox/virtenv/caddy/log
* CADDY_ROOT_DIR=/Users/johnlago/src/devbox-examples/databases/redis/devbox.d/web

To show this information, run `devbox info caddy`
