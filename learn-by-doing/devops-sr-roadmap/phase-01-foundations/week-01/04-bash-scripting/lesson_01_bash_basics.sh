#!/usr/bin/env bash
# Lesson 01 — Bash basics (workbook)
#
# How to use:
# - Run the commands (copy/paste) in your terminal.
# - Write answers below.
# - Keep outputs commented so this file stays runnable.

# ====================
# Task 1 — Exit codes
# ====================
# Run:
#   true; echo $?
#   false; echo $?
#
# YOUR OUTPUT:
#
#
# YOUR ANSWER: What does exit code 0 mean?
#

# ====================
# Task 2 — Variables + quoting
# ====================
# Run:
#   name="Kshitiz"
#   echo $name
#   echo "$name"
#   echo '$name'
#
# YOUR ANSWER: What’s the difference between double and single quotes?
#

# ====================
# Task 3 — if + test
# ====================
# Run:
#   f=/etc/hosts
#   if [[ -f "$f" ]]; then echo "exists"; else echo "missing"; fi
#
# YOUR OUTPUT:
#

# ====================
# Task 4 — for loop
# ====================
# Run:
#   for i in 1 2 3; do echo "i=$i"; done
#
# YOUR OUTPUT:
#

# ====================
# Task 5 — pipes
# ====================
# Run:
#   ls -la | head -n 5
#
# YOUR ANSWER: What does `|` do?
#

# ====================
# Mini assignment
# ====================
# Write a one-liner that prints the number of files in the current directory.
# Hint commands: ls, wc
#
# YOUR ANSWER:
#
