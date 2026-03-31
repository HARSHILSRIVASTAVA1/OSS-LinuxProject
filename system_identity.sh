#!/bin/bash
# Script 1: System Identity Report
# Author: Harshil Srivastava
# Course: Open Source Software
# Description: Displays a welcome screen with system identity and OS license info.

# --- Variables ---
# Storing the student name for the output header
STUDENT_NAME="Harshil Srivastava"
# Setting the chosen software for the audit
SOFTWARE_CHOICE="Linux Kernel"

# --- System info ---
# Extracting the kernel version using uname
KERNEL=$(uname -r)
# Getting the current logged-in user
USER_NAME=$(whoami)
# Storing the path to the user's home directory
HOME_DIR=$HOME
# Getting human-readable system uptime
UPTIME=$(uptime -p)
# Extracting the pretty distribution name directly from the os-release file
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)
# Fetching the current date and time
CURRENT_DATE=$(date +"%A, %B %d, %Y - %T")
# Stating the primary license covering Ubuntu/Linux
OS_LICENSE="GNU General Public License (GPL) and various others"

# --- Display ---
echo "=============================================="
echo "            The Open Source Audit             "
echo "=============================================="
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "----------------------------------------------"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Current Date : $CURRENT_DATE"
echo "OS License   : $OS_LICENSE"
echo "=============================================="
