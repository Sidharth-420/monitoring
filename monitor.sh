#!/bin/bash

##############################################
# Author  : Sidharth
# Date    : 06/07/2026
# Version : v1.0
# Purpose : Monitor EC2 instance health
#           - Running services
#           - CPU usage
#           - Memory usage
#           - Disk usage
##############################################

echo "========================================="
echo "        EC2 SYSTEM MONITORING REPORT"
echo "========================================="
echo "Date      : $(date)"
echo "Hostname  : $(hostname)"
echo "Uptime    : $(uptime -p)"
echo "User      : $(whoami)"
echo "========================================="

echo
echo ">>> Running Services"
systemctl list-units --type=service --state=running --no-pager

echo
echo ">>> CPU Usage"
top -bn1 | grep "Cpu(s)"

echo
echo ">>> Memory Usage"
free -h

echo
echo ">>> Disk Usage"
df -h

echo
echo ">>> Top 5 Memory Consuming Processes"
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -6

echo
echo ">>> Top 5 CPU Consuming Processes"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6

echo
echo "========================================="
echo " Monitoring Completed Successfully"
echo "========================================="
