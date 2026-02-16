<#
LESSON 05: Functions (Workbook)
Goal: Write reusable code with functions, parameters, and basic validation.

Rules:
- Run in `pwsh`.
- Paste short outputs.
- Fill in YOUR ANSWER.
#>

# ====================
# Task 1 — Your first function
# ====================
# Create a function `Get-Greeting` that takes a name and returns:
#   "Hello, <name>"
#
# Start template:
# function Get-Greeting {
#   param(
#     [string]$Name
#   )
#   # your code
# }
#
# Test with:
#   Get-Greeting -Name "Kshitiz"
#
# YOUR ANSWER:
#
#
# YOUR OUTPUT:
#

# ====================
# Task 2 — Default parameter values
# ====================
# Modify (or create) a function `Get-Greeting2` where Name defaults to "World".
# Test:
#   Get-Greeting2
#   Get-Greeting2 -Name "Kshitiz"
#
# YOUR ANSWER:
#
#
# YOUR OUTPUT:
#

# ====================
# Task 3 — Returning objects (important)
# ====================
# Create a function `Get-UserCard` that returns a PSCustomObject with:
# - Name (string)
# - Created (DateTime) = Get-Date
# - Shell (string) = $env:SHELL
#
# Test:
#   $card = Get-UserCard -Name "K"
#   $card
#   $card | Get-Member
#
# YOUR ANSWER:
#
#
# YOUR OUTPUT (show the object + TypeName line from Get-Member):
#

# ====================
# Task 4 — Pipeline input (simple)
# ====================
# Create `Get-UpperName` that accepts names from the pipeline and outputs uppercase names.
#
# Test:
#   'alpha','beta' | Get-UpperName
#
# Hint: use ValueFromPipeline and a process block.
#
# YOUR ANSWER:
#
#
# YOUR OUTPUT:
#

# ====================
# Task 5 — Basic parameter validation
# ====================
# Add validation so Name cannot be empty.
# Example:
#   [ValidateNotNullOrEmpty()]
#
# Test (should error):
#   Get-Greeting -Name ""
#
# YOUR ANSWER (show the updated param block):
#
#
# YOUR OUTPUT / ERROR (paste 1-3 lines):
#

# ====================
# Mini assignment
# ====================
# Write a function `Get-FizzBuzz` that takes an integer `-Max` (default 20)
# and outputs the FizzBuzz sequence from 1..Max.
#
# Test:
#   Get-FizzBuzz -Max 16
#
# YOUR ANSWER:
#
#
# YOUR OUTPUT (first ~16 lines):
#

# STOP: When done, reply “Lesson 05 done”.
