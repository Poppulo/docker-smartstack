#!/bin/bash

if [ -f /etc/nerve.conf.json ]; then
	IP=`grep $HOSTNAME /etc/hosts | sed "s/\s*$HOSTNAME//"`
	sed -i -e 's/\$ZK_HOSTS/'"$ZK_HOSTS"'/' -e 's/\$SERVICE_HOST/'"$IP"'/' /etc/nerve.conf.json
	nerve -c /etc/nerve.conf.json > /var/log/nerve 2>&1 &
	echo "Nerve configuration found - Starting nerve"
else
	echo "No nerve configuration found - Not starting Nerve"
fi
