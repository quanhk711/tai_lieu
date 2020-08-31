#!/bin/bash
PATHS="/"
HOSTNAME=$(hostname)
CRITICAL=98
WARNING=90
MAIL="quanhk511@gmail.com"
mkdir -p /var/log/cputilhist
LOG=/var/log/cputilhist/cpusage-'date+%h%d%y'.log

touch $LOG
for _a in $PATHS;do
	CPULOAD='top -b -n 2 -d1 | grep "Cpu(s)" | tail -n1 | awk '{print $2}' | awk -F.'{print $1}''
	if [ -n $WARNING -a -n $CRITICAL ]; then
		if [ "$CPULOAD" -ge "$WARNING" -a "$CPULOAD" -lt "$CRITICAL" ]; then
		echo "'date "+%F %H:%M:%S"' WARNING - $CPULOAD on host $HOSTNAME" >> $LOG
		echo "waring cpuload $CPULOAD host is $HOSTNAME" | ssmtp quanhk711@gmail.com
		exit 1
	elif [ "$CPULOAD" -ge "$CRITICAL" ]; then
		echo "'date "+%F %H:%M:%S"' CRITICAL - $CPULOAD on host $HOSTNAME" >> $LOG
		echo "waring cpuload $CPULOAD host is $HOSTNAME" | ssmtp quanhk711@gmail.com
		exit 2
	else
		echo "'date "+%F %H:%M:%S"' OK - $CPULOAD on host $HOSTNAME" >> $LOG
		exit 0
	fi
fi
done
