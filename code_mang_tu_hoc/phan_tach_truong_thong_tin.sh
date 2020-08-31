# https://www.youtube.com/watch?v=so8IRuhWjEM&list=PL8cE5Nxf6M6b8qW7CSMsdKbEsPdG9pWfu&index=55
# tách trường nội bộ trong Shell Script
#!/bin/bash 
LINE='cat /etc/passwd | grep $1'
IFS=: 
set $LINE
echo "user name = $1"
echo "passwd = $2"
echo "uid = $3"
echo "gid = $4"
echo "description = $5"
echo "home dir = $6"
echo "shell = $7"
