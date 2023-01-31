# LAMP Stack

[![Open In Devbox.sh](https://jetpack.io/img/devbox/open-in-devbox.svg)](https://devbox.sh/github.com/jetpack-io/devbox-examples?folder=stacks/lamp-stack)

## postgresql-14.6

### postgresql NOTES

To initialize the database run `initdb`.

### Services

* postgresql

Use `devbox services start|stop [service]` to interact with services

### This plugin creates the following helper files

None

### This plugin sets the following environment variables

* PGDATA=/Users/johnlago/src/devbox-examples/stacks/lamp-stack/.devbox/virtenv/postgresql/data

To show this information, run `devbox info postgresql`

## php-with-extensions-8.1.13

### php NOTES

PHP is compiled with default extensions. If you would like to use non-default extensions you can add them with devbox add php81Extensions.{extension} . For example, for the memcache extension you can do `devbox add php81Extensions.memcached`.

### Services

* php-fpm

Use `devbox services start|stop [service]` to interact with services

### This plugin creates the following helper files

* /Users/johnlago/src/devbox-examples/stacks/lamp-stack/devbox.d/php81/php-fpm.conf

### This plugin sets the following environment variables

* PHPFPM_ERROR_LOG_FILE=/Users/johnlago/src/devbox-examples/stacks/lamp-stack/.devbox/virtenv/php81/php-fpm.log
* PHPFPM_PID_FILE=/Users/johnlago/src/devbox-examples/stacks/lamp-stack/.devbox/virtenv/php81/php-fpm.log
* PHPFPM_PORT=8082

To show this information, run `devbox info php81`

## apache-httpd-2.4.54

### apache NOTES

If you with to edit the config file, please copy it out of the .devbox directory.

### Services

* apache

Use `devbox services start|stop [service]` to interact with services

### This plugin creates the following helper files

* /Users/johnlago/src/devbox-examples/stacks/lamp-stack/devbox.d/apacheHttpd/httpd.conf
* /Users/johnlago/src/devbox-examples/stacks/lamp-stack/devbox.d/web/index.html

### This plugin sets the following environment variables

* HTTPD_ERROR_LOG_FILE=/Users/johnlago/src/devbox-examples/stacks/lamp-stack/.devbox/virtenv/apacheHttpd/error.log
* HTTPD_PORT=8080
* HTTPD_DEVBOX_CONFIG_DIR=/Users/johnlago/src/devbox-examples/stacks/lamp-stack
* HTTPD_CONFDIR=/Users/johnlago/src/devbox-examples/stacks/lamp-stack/devbox.d/apacheHttpd

To show this information, run `devbox info apacheHttpd`
