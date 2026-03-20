#!/bin/bash
DATE=$(date +%F)

mkdir -p /backups
tar -czf /backups/nginx_backup_$DATE.tar.gz /etc/nginx /usr/share/nginx/html
echo "Backup completed on $DATE" >> /var/log/backup.log
tar -tzf /backups/nginx_backup_$DATE.tar.gz >> /var/log/backup.log
