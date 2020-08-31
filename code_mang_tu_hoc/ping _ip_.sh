# https://www.youtube.com/watch?v=1fnAUUS4qg0&list=PL8cE5Nxf6M6b8qW7CSMsdKbEsPdG9pWfu&index=42
#!/bin/bash
for i in 'cat hostfile'; do
	ping -c 1 $i > /tmp/pingresults
	valid='echo $?'
	if [ $valid -gt 1 ]; then
		echo "$i is not reachable"
	else
		echo "$i is up"
	fi
done
