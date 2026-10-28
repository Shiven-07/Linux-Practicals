#!/bin/bash
echo "===== TOP CPU PROCESSES =====" 
 
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 6 
 
echo 
echo "===== TOP MEMORY PROCESSES =====" 
 
ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 6
