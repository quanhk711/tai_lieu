#!/bin/bash
#https://techexpert.tips/cacti/cacti-email-notification-setup/
netstat -tulpn | awk '{ print $7 }' | grep "httpd" >/dev/null
			if [ $? = 0 ]; then
				echo "httpd is runing"
			else
				echo "canh bao, httpd da dung" | ssmtp quanhk711@gmail.com
				
			fi