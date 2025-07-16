## 📎 Project URL

https://roadmap.sh/projects/server-stats

---

# 🖥️ Server Performance Analyzer (server-stats.sh)

A simple and portable Bash script that provides a quick health check of a Linux server by analyzing CPU, memory, disk usage, and top resource-consuming processes. Ideal for system administrators, DevOps engineers, and anyone managing Linux servers.

---

## 📌 Features

- ✅ Total CPU usage
- ✅ Total memory usage (used, free, and percentage)
- ✅ Disk usage of root (`/`) partition
- ✅ Top 5 CPU-consuming processes
- ✅ Top 5 memory-consuming processes
- ✅ OS version
- ✅ System uptime
- ✅ Load average
- ✅ Logged-in users
- ✅ Failed SSH login attempts (last 24 hours)

---

## 🚀 How to Run

### 📦 Requirements

- Linux OS (Ubuntu, CentOS, Debian, etc.)
- Bash shell
- Standard system utilities: top, ps, df, free, awk, uptime, grep, etc.

> 💡 If you're using **Windows**, you can test this script using:
> - [WSL (Windows Subsystem for Linux)](https://learn.microsoft.com/en-us/windows/wsl/)
> - Free cloud server (e.g. [AWS EC2 Free Tier](https://aws.amazon.com/free/), Oracle Cloud, etc.)

---

### 📥 Download & Run

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/server-performance-analyzer.git
cd server-performance-analyzer
```

2. Make the script executable:
```bash
chmod +x server-stats.sh
```

3. Run the script:
```bash
./server-stats.sh
```

---

## 📤 Sample Output

```yaml
-------------------------------------------
🖥️ Server Health Report - Tue Jul 16 13:45:03 PKT 2025
-------------------------------------------
📦 OS Version: Ubuntu 22.04.4 LTS
⏱️ Uptime: up 3 days, 1 hour, 42 minutes
📊 Load Average: 0.15, 0.10, 0.08
👥 Logged-in Users: root habib

💽 CPU Usage: Used: 18.3%

🧠 Memory Usage: Used: 1.5Gi / 4.0Gi (37.50%)

📂 Disk Usage (Root Partition): Used: 13G / 40G (32%)

🔥 Top 5 CPU-consuming Processes:
PID    COMMAND    %CPU
1350   apache2    25.1%
1412   mysqld     20.3%
...

🐏 Top 5 Memory-consuming Processes:
PID    COMMAND    %MEM
1412   mysqld     12.1%
1350   apache2    10.4%
...

🚫 Failed SSH Login Attempts (Last 24 hours): 5
-------------------------------------------
```
---
