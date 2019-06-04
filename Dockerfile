FROM alpine:latest

MAINTAINER Frame <carogatica.59@gmail.com>

RUN apk --update add bind 
#RUN /bin/sh -c "mv /etc/bind/named.conf /etc/bind/named.conf.bkp"

COPY bind /etc/bind
RUN /bin/ash -c "chmod -R 777 /etc/bind"
RUN /bin/ash -c "mkdir /var/cache/bind"
RUN /bin/ash -c "chmod -R 777 /var/cache/bind"

EXPOSE 53


CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]