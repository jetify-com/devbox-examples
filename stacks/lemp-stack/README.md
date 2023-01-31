# LEMP Stack

[![Open In Devbox.sh](https://jetpack.io/img/devbox/open-in-devbox.svg)](https://devbox.sh/github.com/jetpack-io/devbox-examples?folder=stacks/lemp-stack)

An example Devbox shell for NGINX, Postgres, and PHP.

## How to Run

### Initializing

In this directory, run:

`devbox shell`

This will run `initdb` automatically on initialization. To start the Servers + Postgres service, run:

`devbox services start`

### Creating the DB

You can run the creation script using `devbox run create_db`. This will create a Postgres DB based on `setup_postgres_db.sql`.

### Testing the Example

You can query Nginx on port 80, which will route to the PHP example. 