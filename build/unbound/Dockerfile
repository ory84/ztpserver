FROM alpine

MAINTAINER Pedro Antunes <pedro.antunes@eplus.com> 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

VOLUME [ "/var/log", "/conf" ]

RUN  apk add --update unbound \
  && rm -rf /var/cache/apk/*

EXPOSE 53 53/udp
