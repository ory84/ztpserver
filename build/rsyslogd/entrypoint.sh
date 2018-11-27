#!/bin/sh

rm -fr /var/run/rsyslogd.pid 2>/dev/null
rm -fr /var/log/remote 2>/dev/null
mkdir /var/log/remote

rsyslogd -n -f /conf/rsyslog.conf 2>/var/log/rsyslogd.log
