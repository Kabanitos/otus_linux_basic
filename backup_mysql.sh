#!/bin/bash
echo "Stop service mysql"
systemctl stop mysqld
echo "mkdir /opt/backup_mysql"
mkdir  /opt/backup_mysql
echo "Copy MySQL data directory to a storage location"
tar cfvz /opt/backup_mysql/db-$(date +%F).tar.gz /var/lib/mysql/*
echo "Start service mysql" 
systemctl restart mysqld
