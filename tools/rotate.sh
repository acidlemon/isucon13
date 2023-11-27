#!/bin/sh

TAG=$(date +%Y%m%d-%H%M%S)

#nginx log rotate
sudo mv /var/log/nginx/access.log /var/log/nginx/access.$TAG.log
sudo mv /var/log/nginx/error.log /var/log/nginx/error.$TAG.log
sudo kill -USR1 `cat /var/run/nginx.pid`


# mysql slow log rotate

sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow-$TAG.log
sudo mysqladmin -u isucon -pisucon flush-logs

echo isu02 Disk Summary
ssh isucon@isu02 df -h | grep /dev/

ssh isucon@isu02 sudo "mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow-$TAG.log && mysqladmin -u isucon -pisucon flush-logs"

echo isu03 Disk Summary
ssh isucon@isu03 df -h | grep /dev/

ssh isucon@isu03 sudo "mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow-$TAG.log && mysqladmin -u isucon -pisucon flush-logs"
