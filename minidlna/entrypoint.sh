#!/bin/sh

if [ -e /run/minidlna/minidlna.pid ]; then
    rm /run/minidlna/minidlna.pid
fi

printenv | grep minidlna_ | sed -e "s/^minidlna_//" >> /tmp/minidlna.conf.overrides
awk -F= 'NR==FNR{a[$1]=$0;next}($1 in a){$0=a[$1]}1' /tmp/minidlna.conf.overrides /tmp/minidlna.conf.template > /etc/minidlna.conf

exec /usr/sbin/minidlnad  -S
