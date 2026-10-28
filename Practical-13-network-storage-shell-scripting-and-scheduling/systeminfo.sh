#!/bin/bash
echo "===== SYSTEM INFORMATION =====" 
 
echo "Hostname:" 
hostname 
 
echo "Kernel:" 
uname -r 
 
echo "Operating System:" 
cat /etc/os-release | grep '^PRETTY_NAME' 
 
echo "Current User:" 
whoami 
 
echo "Date:" 
date 
 
echo "Uptime:" 
uptime 
 
echo "Memory:" 
free -h 
 
echo "Disk:" 
df -h /
