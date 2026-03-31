#!/bin/bash
# Script 4: Log File Analyzer
# Author: Harshil Srivastava
# Course: Open Source Software
# Description: Reads a log file, counts occurrences of a keyword, and displays the last 5 matches.

# --- Variables & Command Line Arguments ---
# $1 is the first argument passed (the log file path)
LOGFILE=$1
# $2 is the second argument. If not provided, it defaults to "error"
KEYWORD=${2:-"error"}
COUNT=0

echo "=================================================="
echo "               Log File Analyzer                  "
echo "=================================================="

# --- TODO 1: Do-while style retry if the file is empty or missing ---
# Bash doesn't have a strict 'do-while', so we use 'while true' and break out of it when successful.
while true; do
    # Check if the variable is empty (-z) OR if the file does not exist / has zero size (! -s)
    if [ -z "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; then
        echo "Warning: No file provided, or the file '$LOGFILE' is missing/empty."
        # Prompt the user interactively to provide a valid path
        read -p "Please enter a valid log file path (e.g., /var/log/syslog): " LOGFILE
    else
        # The file exists and has content, so we break the loop and continue
        break
    fi
done

echo "Analyzing '$LOGFILE' for the keyword '$KEYWORD'..."

# --- Read Loop ---
# IFS= prevents leading/trailing whitespace from being trimmed. -r prevents backslash escaping.
while IFS= read -r LINE; do
    # Using grep quietly (-q) and case-insensitively (-i) to check if the line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output Summary ---
echo "--------------------------------------------------"
echo "Summary: Keyword '$KEYWORD' found $COUNT times."
echo "--------------------------------------------------"

# --- TODO 2: Print the last 5 matching lines ---
# Only attempt to print the lines if we actually found matches
if [ "$COUNT" -gt 0 ]; then
    echo "Here are the last 5 matching lines from the log:"
    # grep finds all matches, and we pipe (|) that into tail to just grab the last 5
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi

echo "=================================================="
