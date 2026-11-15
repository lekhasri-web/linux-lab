#!/bin/bash

file=$1
if [[ ! -f "$file" ]]; then
	echo "Usage: $0 <file> valid file needs to be passed as an argument"
	exit 2
fi


second=${2:-3}
	count=$(grep -c ERROR "$file")
	TS=$(date '+%F %T')
	echo "$TS errors=$count file=$file" >> /home/ubuntu/linux-labs/monitor.out
	if [[ $count -lt $second ]]; then
		exit 0
	else 
		exit 1


fi

