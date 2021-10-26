#!/bin/bash
function up_tracker(){
	tracker=$(wget -q -O - https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | tr -s "\n" ",")
	tracker=${tracker%*,}
	#替换处理bt-tracker
	tracker="bt-tracker="${tracker}
	#更新aria2配置
	sed -i '/bt-tracker.*/'d /usr/local/aria2/aria2.conf
	echo ${tracker} >> /usr/local/aria2/aria2.conf
	echo '-------------------------------------'
	echo 'bt-tracker update completed.'
	echo '-------------------------------------'
}

up_tracker

#重启服务
systemctl restart aria2
