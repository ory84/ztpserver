FROM alpine

MAINTAINER Pedro Antunes <pedro.antunes@eplus.com> 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

VOLUME [ "/var/log", "/conf" ]

RUN  apk add --update dhcp \
 && rm -rf /var/cache/apk/*

EXPOSE 67 67/tcp


