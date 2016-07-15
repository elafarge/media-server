#!/bin/sh

# Get the certificate on startup
/update_certs.sh

# Set up a cronjob that will periodically renew the certs
crontab /crontab.conf

# Execute the user provided command (tail crontab's output by default)
exec "$@"
