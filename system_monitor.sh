#!/bin/bash
echo "=====$(date) =====" >> /var/log/system_monitor.log
top -b -n1 | head -20 >> /var/log/system_monitor.log
df -h >> /var/log/system_monitor.log

