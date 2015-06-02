#!/bin/bash

if [ -f /etc/synapse.conf.json ]; then
	IP=`grep $HOSTNAME /etc/hosts | sed "s/\s*$HOSTNAME//"`
	sed -i -e 's/\$ZK_HOSTS/'"$ZK_HOSTS"'/' /etc/synapse.conf.json
	synapse -c /etc/synapse.conf.json > /var/log/synapse 2>&1 &
	echo "Synapse configuration found - Starting Synapse"
else
	echo "No Synapse configuration found - Not starting Synapse"
fi
