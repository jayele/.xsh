#!/usr/bin/expect -f
# 待修改 第一次登陆时会提示让输入 yes/no
# 这句可避免 scp ssh  时输入yes .       -o "StrictHostKeyChecking no"
set user root
set host 192.0.0.1
set password 123456

set timeout -1
#spawn ssh -o PreferredAuthentications=password $user@$host
spawn ssh -o "StrictHostKeyChecking no" -o "ServerAliveInterval=30" $user@$host

expect "*assword:*"
send "$password\r"
interact
exit
