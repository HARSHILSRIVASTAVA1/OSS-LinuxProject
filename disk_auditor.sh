#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Harshil Srivastava
# Course: Open Source Software
# Description: Audits key system directories for size, owner, and permissions.

# Array of standard directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "           Directory Audit Report             "
echo "=============================================="

# Loop through each directory in the array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract human-readable size using du and cut (suppressing read errors)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Perms/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------------------------------"
echo "Auditing software-specific directory (Linux Kernel):"

# Checking /boot where kernel configs and images are stored
SOFTWARE_DIR="/boot"

if [ -d "$SOFTWARE_DIR" ]; then
    S_PERMS=$(ls -ld "$SOFTWARE_DIR" | awk '{print $1, $3, $4}')
    S_SIZE=$(du -sh "$SOFTWARE_DIR" 2>/dev/null | cut -f1)
    echo "$SOFTWARE_DIR => Perms/Owner: $S_PERMS | Size: $S_SIZE"
else
    echo "$SOFTWARE_DIR does not exist on this system"
fi
echo "=============================================="
