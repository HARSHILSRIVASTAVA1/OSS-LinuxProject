#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Harshil Srivastava
# Course: Open Source Software
# Description: Interactively generates a personal open-source manifesto and saves it to a text file.

# Concept Demonstration (Aliases):
# An alias is a custom shortcut for a command. If we wanted to make running this script easier,
# we could add `alias manifesto="./manifesto_generator.sh"` to our ~/.bashrc file.

echo "=================================================="
echo "       The Open Source Manifesto Generator        "
echo "=================================================="
echo "Answer three questions to generate your manifesto."
echo

# Reading user input into variables
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Formatting the current date
DATE=$(date +'%d %B %Y')
# Creating a dynamic output filename based on the current user
OUTPUT="manifesto_$(whoami).txt"

echo
echo "Drafting your philosophy..."
sleep 1

# --- Writing to the file ---
# We use '>' on the first line to create the file (or overwrite if it exists)
echo "=========================================" > "$OUTPUT"
# We use '>>' for the rest to append to the end of the file
echo "        MY OPEN SOURCE MANIFESTO         " >> "$OUTPUT"
echo "        Date: $DATE                      " >> "$OUTPUT"
echo "=========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Software is more than just code; it is a collaborative human endeavor." >> "$OUTPUT"
echo "Every day, I rely on tools like $TOOL to learn, create, and explore." >> "$OUTPUT"
echo "When I think of the open-source movement, the word that comes to mind is '$FREEDOM'." >> "$OUTPUT"
echo "Just as thousands of developers contributed to the Linux Kernel to give us a robust, free foundation," >> "$OUTPUT"
echo "I believe in giving back to this ecosystem. If I could, I would build $BUILD" >> "$OUTPUT"
echo "and share it freely with the world, ensuring that knowledge remains accessible to all." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "- Signed, $(whoami)" >> "$OUTPUT"

echo "Manifesto successfully saved to $OUTPUT"
echo "--------------------------------------------------"
echo "Here is your generated manifesto:"
echo "--------------------------------------------------"

# Displaying the generated file contents
cat "$OUTPUT"
echo "=================================================="
