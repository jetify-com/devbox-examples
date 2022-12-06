# Drupal Stack

An example Devbox shell for Drupal CMS

## How to Run

In this directory, run: 

`devbox shell`

To create the `devbox_drupal` database and example table, you should run: 

`mysql -u root < setup_db.sql`

To install Drupal and your dependencies, run `composer install`. The Drupal app will be installed in the `/web` directory, and you can configure your site by visiting `localhost/autoload` in your browser and following the interactive instructions

To exit the shell, use `exit`

## Configuration

Because the Nix Store is immutable, we need to store our configuration, data, and logs in a local project directory. This is stored in the `conf` directory, in a subfolder for each of the packages that we will be installing.

## Init Hook

The init_hook in our `devbox.json` takes the following steps: 

1. Sources environment variables we will need for initializing and running our shell (set-env.sh)
2. Launches Mariadb, Apache, and PHP-FPM in the background
   1. If this is your first time running the shell, MariaDB installs a database in `conf/mysql/data`, and then starts mysqld using  `conf/mysql` as the home directory.
   2. Nginx is also started using the configuration in `conf/nginx`
   3. PHP-FPM is started as a daemon, setting the current directory as your prefix and loading the configuration in `conf/php` 
3. Sources the `finish()` bash function that will run when the Shell exits or is interrupted (set-exit.sh)
