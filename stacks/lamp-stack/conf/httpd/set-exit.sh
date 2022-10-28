
finish() {
  # Add any additional cleanup steps here:
  # Stop Apache
  apachectl stop -f $HTTPD_CONFDIR/httpd.conf

}

trap finish EXIT
trap `exit 1` SIGINT SIGSTOP SIGTERM