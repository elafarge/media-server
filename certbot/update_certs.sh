#!/bin/sh

certbot certonly --standalone -d "$DOMAIN" --text --agree-tos --email "$EMAIL" --server https://acme-v01.api.letsencrypt.org/directory --rsa-key-size 4096 --verbose --renew-by-default --standalone-supported-challenges http-01
