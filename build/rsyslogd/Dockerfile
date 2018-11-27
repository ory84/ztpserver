FROM alpine

MAINTAINER Pedro Antunes <pedro.antunes@eplus.com> 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

VOLUME [ "/var/log", "/data" ]

RUN  apk add --update rsyslog \
  && rm -rf /var/cache/apk/*

EXPOSE 514 514/udp


