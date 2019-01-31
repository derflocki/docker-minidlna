#!/bin/sh

set -e
if [ ! -d /config ]; then
	mkdir /config
fi
if [ ! -e '/config/minidlna.conf' ]; then
	cp /etc/minidlna.conf /config/minidlna.conf
fi

exec /usr/sbin/minidlnad -d -f /config/minidlna.conf -P /dev/null
