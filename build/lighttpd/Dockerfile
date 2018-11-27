FROM alpine

MAINTAINER Pedro Antunes <pedro.antunes@eplus.com> 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

VOLUME [ "/conf", "/data" ]

RUN  apk add --update lighttpd \
 && rm -rf /var/cache/apk/*

EXPOSE 80 80/tcp


