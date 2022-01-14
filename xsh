#!/bin/bash

BASENAME=`basename $0`
XSH_ROOT_PATH='/Users/jayele/.xsh/'
cd $XSH_ROOT_PATH

echo -e '\n******************************'
ls | sort | sed "/$BASENAME/d" | cat -n
echo -e '******************************\n'

read -p "Select Conn Id: " id

comm=`ls | sort | sed "/$BASENAME/d" |cat -n |grep "$id\t" | awk -F\t '{print $2}'`

echo "正在连接到: '$comm....."
./$comm

exit 0
