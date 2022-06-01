#!/bin/sh

if [ -e /run/minidlna/minidlna.pid ]; then
    rm /run/minidlna/minidlna.pid
fi

printenv | grep minidlna_ | sed -e "s/^minidlna_//" > /tmp/overrides.ini
awk -F= 'NR==FNR{a[$1]=$0;next}($1 in a){$0=a[$1]}1' /tmp/overrides.ini /etc/minidlna-template.conf > /etc/minidlna.conf

exec /usr/sbin/minidlnad  -S