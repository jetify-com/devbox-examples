
finish() {
  # Add any additional cleanup steps here:
  # Stop Apache
  apachectl stop -f $HTTPD_CONFDIR/httpd.conf

}

trap finish SIGINT