# This script should be sourced in the init_hook of our `devbox.json`
# This script will detect an EXIT signal, and then terminate running processes and run any other cleanup steps that are required

finish() {
  # Kill the running php-fpm process
  pkill -SIGINT -F $PHP_CONFDIR/php-fpm.pid
}

trap finish SIGINT