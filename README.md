🚀 EC2 Monitoring & Shell Scripting Assignment

📖 Objective

Learn cloud setup, shell scripting, automation, and monitoring of AWS EC2 instances using Bash and Git.

⸻

🛠️ Technologies Used

* AWS EC2 (Ubuntu)
* Bash Shell Scripting
* Git
* GitHub
* Cron (Task Scheduler)
* Linux Commands

⸻

📅 Day 1: Environment Setup & Monitoring Script

✅ Task 1: Launch EC2 Instance

* Created a Free Tier Ubuntu EC2 instance.
* Connected to the instance using SSH.

⸻

✅ Task 2: Install Required Tools

Updated the package list and installed Git.

sudo apt update
sudo apt install git -y

⸻

✅ Task 3: Initialize Git Repository

Created a project directory and initialized a Git repository.

mkdir shell-assignment
cd shell-assignment
git init

⸻

✅ Task 4: Create EC2 Monitoring Script

Created a Bash script named monitor.sh to monitor the EC2 instance.

The script displays:

* Current Date & Time
* Hostname
* Logged-in User
* System Uptime
* Running Services
* CPU Usage
* Memory Usage
* Disk Usage
* Top 5 CPU Consuming Processes
* Top 5 Memory Consuming Processes

Run the script using:

chmod +x monitor.sh
./monitor.sh

⸻

✅ Task 5: Push Code to GitHub

Initialized Git, committed the project, and pushed it to GitHub.

git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <repository-url>
git push -u origin main

⸻

📅 Day 2: Automation & Logging

✅ Task 6: Log Monitoring Output

Saved the monitoring report to a log file.

./monitor.sh >> monitor_logs.txt

⸻

✅ Task 7: Enhance Monitoring Script

Enhanced the monitoring script with:

* Professional report header
* Better formatting
* Hostname
* Date and Time
* Uptime
* User information
* CPU, Memory, and Disk statistics
* Top resource-consuming processes

⸻

✅ Task 8: Schedule Automation Using Cron

Configured a cron job to execute the monitoring script automatically every day.

Edit the cron table:

crontab -e

Example cron entry (runs every day at 9:00 AM):

0 9 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/shell-assignment/monitor_logs.txt

⸻

✅ Task 9: Version Control Updates

Committed and pushed all project updates.

git add .
git commit -m "Added automation and logging"
git push

⸻

📂 Project Structure

shell-assignment/
├── monitor.sh
├── monitor_logs.txt
├── README.md
└── screenshot/
    ├── cron job output/
    │   ├── i
    │   ├── project 1.png.png
    │   └── project.png
    ├── first output/
    │   ├── 1.png
    │   ├── I
    │   └── before enhancing run.png
    └── second output/
        ├── I
        ├── project3.png
        └── project 2.png
▶️ Sample Output

=========================================
        EC2 SYSTEM MONITORING REPORT
=========================================
Date
Hostname
Uptime
Running Services
CPU Usage
Memory Usage
Disk Usage
Top 5 CPU Processes
Top 5 Memory Processes
=========================================
 Monitoring Completed Successfully
=========================================

⸻

🎯 Learning Outcomes

After completing this assignment, you will be able to:

* Launch and connect to an AWS EC2 instance.
* Install and configure Git.
* Write Bash scripts for system monitoring.
* Automate tasks using Cron.
* Log system monitoring data.
* Manage source code using Git and GitHub.

⸻

👨‍💻 Author

Sidharth

⸻

📜 License

This project is created for educational and learning purposes.
