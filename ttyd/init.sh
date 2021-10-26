#!/bin/bash
#请ln -s /usr/local/ttyd/init.sh /usr/sbin/webssh
echo -e "请使用类似\"ssh -l username ip\"命令方式登录你的ssh服务器。\n为避免超时，请登录ssh服务器后使用\"screen -S\"命令保存作业。\n我们没有记录您使用过程输入的任何信息。";
rm -f ~/.ssh/known_hosts;
cd ~;
export PATH=~/.local/bin;
/bin/rbash;
#--rcfile /home/webssh/.bashrc;
#/bin/bash --restricted
