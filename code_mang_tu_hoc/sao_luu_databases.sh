#!/bin/bash
DBUSER=root
FMTOPTION='--skip-column-names'
COMMAND='SHOW DATABASES'
BACKUPDIR=/root

for DBNAME in $(mysql --skip-column-names -E -u root -e 'SHOW DATABASES' | grep -v "*" | grep -v "information_schema" | grep -v "test" ); do
	echo "Taking backup of $DBNAME"
mysqldump -u $DBUSER $DBNAME > $BACKUPDIR/$DBNAME.dump
done