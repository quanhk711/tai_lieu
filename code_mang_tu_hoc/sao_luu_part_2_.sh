#sự khác nhau giữa sh và ./ là ./ có thể truyền tham số ở ngoài khi chạy script 
#còn sh thì không được nhằm đề cho mục đích như dưới đây 
# https://www.youtube.com/watch?v=jXv1otUXMG4&list=PL8cE5Nxf6M6b8qW7CSMsdKbEsPdG9pWfu&index=47
# %F này là lấy full date, nếu chỉ lấy ngày thì %D, giờ thì %H
# $$ là trả về id của process chạy backup mình đang chạy theo câu lệnh trên
#!/bin/bash
function takebackup (){
	if [ -f $1 ]; then
		BACKUP="/root/backup/$(basename ${1}).$(date +%F).$$"
		echo "Backing up $1 to ${BACKUP}"
		cp $1 $BACKUP
	fi
}

takebackup /noi can backup
	if [ $? -eq 0 ]; then
		echo "Backup success!!!"
	fi