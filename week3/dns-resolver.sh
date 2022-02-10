#!/bin/bash

network_prefix=$1
dns=$2
echo "dns resolution for $network_prefix"

for ip in $network_prefix.{0..254}; do
	nslookup $ip $dns | grep "name"
done
