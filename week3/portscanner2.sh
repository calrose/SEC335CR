#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage: $0 ip_prefix port"
	exit 1
fi

network_prefix=$1
port=$2
echo "ip,port"
for ip in $network_prefix.{0..254}; do
	timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null && echo "$ip,$port"
done
