<#
LESSON 03: Variables + Types (Workbook)
Goal: Get comfortable creating variables, understanding types, and working with arrays/hashtables/strings.

Rules:
- Run commands in `pwsh`.
- Paste short outputs.
- Fill in YOUR ANSWER.
- Don’t paste secrets.
#>

# ====================
# Task 1 — Variables and assignment
# ====================
# Run:
#   $name = "Kshitiz"
#   $count = 3
#   $name
#   $count
#   $name.GetType().FullName
#   $count.GetType().FullName
#
# YOUR OUTPUT (types):
# System.String
# System.Int32
# Questions:
# Q1) What type is $name?
# YOUR ANSWER: String
#
# Q2) What type is $count?
# YOUR ANSWER: integer
#

# ====================
# Task 2 — Casting (forcing a type)
# ====================
# Run:
#   $n1 = "42"
#   $n2 = 42
#   $n1 + 1
#   $n2 + 1
#   [int]$n1 + 1
#
# YOUR OUTPUT (3 results):
# 421
# 43
# 43
# Questions:
# Q1) Why is `$n1 + 1` not the same as `$n2 + 1`?
# YOUR ANSWER: because $n1 is a string and that operation just concatenates "42" and "1" to produce "421", while $n2 is an integer and that operation performs arithmetic addition to produce 43. When we cast $n1 to an integer using [int]$n1, it converts the string "42" to the integer 42, and then adding 1 gives us 43, which is the same result as $n2 + 1.
#

# ====================
# Task 3 — Arrays
# ====================
# Run:
#   $nums = 1,2,3,4,5
#   $nums
#   $nums.Count
#   $nums[0]
#   $nums[-1]
#   $nums + 6
#
# YOUR OUTPUT (Count, first, last):
# 5
# 1
# 5
#
# Questions:
# Q1) What does index -1 mean?
# YOUR ANSWER: last element basically like a loop goes back to the start when it reaches the end, so -1 is like going back one step from the end, which gives us the last element of the array.
#
# Q2) Make a new array `$evens` that contains only even numbers from `$nums`.
# YOUR ANSWER (command): $evens = $nums | Where-object { $_ % 2 -eq 0 }
#

# ====================
# Task 4 — Hashtables (key/value)
# ====================
# Run:
#   $me = @{ Name = "Kshitiz"; Role = "DevOps"; StartYear = 2026 }
#   $me
#   $me.Keys
#   $me["Role"]
#   $me.Role
#   $me["City"] = "Bengaluru"
#   $me
#
# YOUR OUTPUT (Role + Keys count):
# DevOps, 4
#
# Questions:
# Q1) Difference between `$me["Role"]` and `$me.Role`?
# YOUR ANSWER: No difference even the type of both is string.
#

# ====================
# Task 5 — Strings and interpolation
# ====================
# Run:
#   $first = "K"
#   $last = "Michael"
#   "$first $last"
#   '$first $last'
#   "Length: $($last.Length)"
#
# YOUR OUTPUT (3 lines):
#K Michael
# $first $last
# Length: 7
# Questions:
# Q1) Why do single quotes behave differently from double quotes?
# YOUR ANSWER: single treats the things inside it as literal string where as double quotes allows variable interpolation and expression evaluation.
#

# ====================
# Task 6 — Useful automatic variables
# ====================
# Run:
#   $null -eq $false
#   $true -and $false
#   $HOME
#   $PWD.Path
#
# YOUR OUTPUT (HOME and PWD.Path):
#/Users/kshitizmichael
#/Users/kshitizmichael/KodeKloud/learn-by-doing

# ====================
# Mini assignment (combine skills)
# ====================
# Create a hashtable `$profile` with:
# - Name (string)
# - Skills (array of 3 strings)
# - Active (boolean)
# Then output:
# - The Name
# - The 2nd skill
# - "Active: <value>"
#
# YOUR ANSWER (commands + short output):
# $profile = @{ Name = "Arunima"; Skills = "Photography", "Film Analysis", "Cinematography" ; Active = $true }   
# $profile.Name
# $profile.Skills[1]
# "Active: $($profile.Active)"
#
# YOUR OUTPUT:
# Arunima
# Film Analysis
# Active: True

# STOP: When done, reply “Lesson 03 done”.

<#
====================
Lesson 03 validation (Copilot)

Overall: Nicely done — you’re using types correctly and your reasoning is solid.

Small corrections / upgrades
- Task 3 Q1: `-1` means “last element” (PowerShell supports negative indexes). No looping involved.
- Task 3 Q2: Your command is correct; style tweak: `Where-Object` (capital O) is the canonical name.
- Task 4 Q1: Mostly true for simple keys: both return the same value; bracket syntax also supports keys with spaces/special chars and dynamic keys.
- Mini assignment: use `$true` (not `true`) for a boolean literal; I adjusted your snippet above.

Ready for Lesson 04.
====================
#>
