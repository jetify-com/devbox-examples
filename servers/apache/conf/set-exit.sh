#! bash
# This script should be sourced in the init_hook of our `devbox.json`
# This script will detect an EXIT signal, and then terminate running processes and run any other cleanup steps that are required

finish() {
  # Add any additional cleanup steps here:
  # Stop Apache
  apachectl stop -f $HTTPD_CONFDIR/httpd.conf
}

trap finish EXIT