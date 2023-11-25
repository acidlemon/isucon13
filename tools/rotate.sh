#!/bin/sh

TAG=$(date +%Y%m%d-%H%M%S)

#nginx log rotate
sudo mv /var/log/nginx/access.log /var/log/nginx/access.$TAG.log
sudo mv /var/log/nginx/error.log /var/log/nginx/error.$TAG.log
sudo kill -USR1 `cat /var/run/nginx.pid`


# mysql slow log rotate

echo isu03 Disk Summary
ssh ubuntu@isu03 df -h | grep /dev/[xv]

ssh ubuntu@isu03 sudo "mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow-$TAG.log && mysqladmin -u isucon -pisucon flush-logs"