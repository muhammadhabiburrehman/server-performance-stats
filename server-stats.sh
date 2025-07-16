#!/bin/bash

echo "-------------------------------------------"
echo "🖥️  Server Health Report - $(date)"
echo "-------------------------------------------"

# OS version
echo -e "\n📦 OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'

# Uptime
echo -e "\n⏱️  Uptime:"
uptime -p

# Load average
echo -e "\n📊 Load Average:"
uptime | awk -F'load average:' '{ print $2 }'

# Logged-in users
echo -e "\n👥 Logged-in Users:"
who | awk '{print $1}' | sort | uniq

# CPU usage
echo -e "\n💽 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2 + $4 "%"}'

# Memory usage
echo -e "\n🧠 Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / %s (%.2f%%)\n", $3, $2, ($3/$2)*100}'

# Disk usage
echo -e "\n📂 Disk Usage (Root Partition):"
/bin/df -h / | awk 'NR==2{printf "Used: %s / %s (%s)\n", $3, $2, $5}'

# Top 5 CPU-consuming processes
echo -e "\n🔥 Top 5 CPU-consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | awk 'NR==1{print $0} NR>1{printf "%-6s %-20s %s%%\n", $1, $2, $3}'

# Top 5 memory-consuming processes
echo -e "\n🐏 Top 5 Memory-consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6 | awk 'NR==1{print $0} NR>1{printf "%-6s %-20s %s%%\n", $1, $2, $3}'

# Failed login attempts
echo -e "\n🚫 Failed SSH Login Attempts (Last 24 hours):"
grep "Failed password" /var/log/auth.log | grep "$(date '+%b %_d')" | wc -l 2>/dev/null || echo "Not available on this system"

echo "-------------------------------------------"
