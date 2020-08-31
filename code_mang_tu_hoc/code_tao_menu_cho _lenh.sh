# cdoe này dùng để chú thíc cho lệnh, thay vì nhập thông số máy móc thì 
# mình làm ra menu và chú thích 
# seq command | How to use effectively in shell Scripting | Tech Arkit
# ví dụ lệnh seq
#https://www.youtube.com/watch?v=JT2lEulFlrQ&list=PL8cE5Nxf6M6b8qW7CSMsdKbEsPdG9pWfu&index=65
#!/bin/bash
echo -e "Please provide BEGIN value: "
read -r _b
echo -e "Please provide INTERVAL value: "
read -r _i
echo -e "Please provide END value: "
read -r _e
for a in 'seq $_b $_i $_e'; do
	echo -n "$a"
done