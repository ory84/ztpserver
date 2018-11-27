#!/bin/sh

rm /var/log/unbound.log 2>/dev/null
unbound -d -vv -c /conf/unbound.conf 2>/var/log/unbound.log
