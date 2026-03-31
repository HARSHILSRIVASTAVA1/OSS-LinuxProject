#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Harshil Srivastava
# Course: Open Source Software
# Description: Checks if a chosen FOSS package is installed and prints its details.

# Dynamically grab the exact kernel image package currently running on your VM
PACKAGE="linux-image-$(uname -r)"

echo "Inspecting package: $PACKAGE..."
echo "-----------------------------------"

# Check if package is installed using dpkg (Ubuntu/Debian standard)
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[+] $PACKAGE is installed."
    # Extracting Version and Status using grep
    dpkg -s "$PACKAGE" | grep -E '^Version:|^Status:'
else
    echo "[-] $PACKAGE is NOT installed."
fi

echo "-----------------------------------"

# Case statement printing a philosophy note based on the package name
case "$PACKAGE" in
    linux-image-*)
        echo "Linux Kernel: The foundation everything else runs on."
        ;;
    apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql-server)
        echo "MySQL: Open source at the heart of millions of apps."
        ;;
    firefox)
        echo "Firefox: A nonprofit fighting for an open web."
        ;;
    *)
        echo "$PACKAGE: A valuable part of the FOSS ecosystem."
        ;;
esac
