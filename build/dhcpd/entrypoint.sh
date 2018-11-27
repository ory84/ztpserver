#!/bin/sh

touch /var/log/dhcpd.leases

dhcpd -4 -d -f --no-pid -cf /conf/dhcpd.conf -lf /var/log/dhcpd.leases $1
