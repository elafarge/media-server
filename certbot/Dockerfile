FROM alpine

MAINTAINER Étienne Lafarge <etienne.lafarge@gmail.com>

VOLUME /etc/letsencrypt /var/lib/letsencrypt

RUN apk update && apk add certbot && rm -rf /var/cache/apk/*

ADD crontab.conf /crontab.conf
ADD update_certs.sh /update_certs.sh
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /update_certs.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/crond",  "-f", "-d", "0"]
