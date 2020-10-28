#!/bin/bash
mkdir /home/sysadmin/research 2> /dev/null

find / -type f -perm /4000

ps aux --sort -%mem \ head >> ~/research/sys_info.txt
echo -e "\n ====================="
echo "# A quick System Audit Script"
echo -e  "====================\n\n"
echo "the date is:"
date
echo " "
echo -e "\n------"
echo "The MachineType Info for this computer is:"
echo $MACHTYPE
echo -e "\n-----"
echo -e "uname info is: " && uname -a 
echo -e  "IP Info: $(ip addr | grep inet | head -3 | tail -1) \n"
echo -e "\n---"
echo "DNS Servers are:"
cat /etc/resolv.conf
echo -e "\n----"
echo "Memory Info:"
free
echo -e "\n----"
echo -e "\nCPU Info:"
lscpu | grep CPU
echo -e "\n----"
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\n ----"
echo -e "\nWho is logged in: \n $(who) \n"
echo -e "\n ============\n"
