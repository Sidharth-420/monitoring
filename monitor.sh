#!/bin/bash
#########
#author:sidhart
#date:06/07/2026
#version:v1
###########
#about: this script is used to monitor Display services,CPU usage, memory usage, disk usage
#


echo "Running Services:"
systemctl list-units --type=service --state=running
echo

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo

echo "Memory Usage:"
free -h
echo

echo "Disk Usage:"
df -h
echo

echo " Monitoring Complete "
