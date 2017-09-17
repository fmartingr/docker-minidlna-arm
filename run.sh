#!/bin/bash

for VAR in `env`; do
    if [[ $VAR =~ ^MINIDLNA_ ]]; then
	minidlna_key=`echo "$VAR" | sed -r "s/MINIDLNA_(.*)=.*/\1/g" | tr '[:upper:]' '[:lower:]'`
	minidlna_value=`echo "$VAR" | sed -r "s/.*=(.*)/\1/g"`
	echo "${minidlna_key}=${minidlna_value}" >> /etc/minidlna.conf
    fi
done

exec /usr/sbin/minidlnad -d $@
