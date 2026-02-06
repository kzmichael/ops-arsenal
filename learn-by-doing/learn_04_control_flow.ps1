<#
LESSON 04: Control Flow (Workbook)
Goal: Make decisions (if/switch) and repeat work (foreach/for/while) in a predictable way.

Rules:
- Run in `pwsh`.
- Paste short outputs.
- Fill in YOUR ANSWER.
#>

# ====================
# Task 1 — if / elseif / else
# ====================
# Run:
#   $n = 7
#   if ($n -gt 10) { "big" }
#   elseif ($n -gt 5) { "medium" }
#   else { "small" }
#
# YOUR OUTPUT:
# medium
#
# Questions:
# Q1) Change $n to 3 and 20. What outputs do you get?
# YOUR ANSWER: small for 3, big for 20
#

# ====================
# Task 2 — Comparison operators
# ====================
# Run:
#   "hello" -like "h*"
#   "hello" -match "^h.*o$"
#   5 -in 1..10
#   "cat" -in "dog","cat","fox"
#
# YOUR OUTPUT (4 results):
# all true 
#
# Questions:
# Q1) When would you prefer `-like` over `-match`?
# YOUR ANSWER: like when we are not sure about the exact phrase or pattern we are looking for, and we just want to check if it matches a general pattern. For example, if we want to check if a filename ends with .txt, we can use -like "*.txt" instead of writing a more complex regular expression with -match. On the other hand, if we need to match a specific pattern or extract information from a string, we would use -match with a regular expression.
#

# ====================
# Task 3 — switch
# ====================
# Run:
#   $day = (Get-Date).DayOfWeek
#   switch ($day) {
#     'Saturday' { 'Weekend' }
#     'Sunday'   { 'Weekend' }
#     default    { 'Weekday' }
#   }
#
# YOUR OUTPUT:
# Weekday as it is friday when I ran it, but it would be Weekend if I ran it on Saturday or Sunday.
#
# Question:
# Q1) What’s one advantage of `switch` over lots of `elseif`?
# YOUR ANSWER: switch gives more options for matching conditions as well as clear defintion with choice
#

# ====================
# Task 4 — foreach (the workhorse)
# ====================
# Run:
#   $names = 'alpha','beta','gamma'
#   foreach ($name in $names) {
#     "Name: $name"
#   }
#
# YOUR OUTPUT:
#
# Name: alpha
# Name: beta
# Name: gamma
#
# Question:
# Q1) What is `$name` inside the loop?
# YOUR ANSWER: current element 
#

# ====================
# Task 5 — Pipeline foreach (% / ForEach-Object)
# ====================
# Run:
#   1..5 | ForEach-Object { $_ * 2 }
#   1..5 | % { $_ * 2 }
#
# YOUR OUTPUT:
# same answer for both as % is an alias for ForEach-Object
#
# Question:
# Q1) What does `$_` represent?
# YOUR ANSWER:
# current object in the pipeline

# ====================
# Task 6 — for loop (index-based)
# ====================
# Run:
#   for ($i = 0; $i -lt 3; $i++) {
#     "i=$i"
#   }
#
# YOUR OUTPUT:
# i=0
# i=1
# i=2
#
# Question:
# Q1) When is `for` better than `foreach`?
# YOUR ANSWER:
# when there is any interger counter or index based looping is required for is better to use for loop but when the object collection is to be iterated foreach is better or an array

# ====================
# Task 7 — while loop
# ====================
# Run:
#   $x = 1
#   while ($x -le 3) {
#     "x=$x"
#     $x++
#   }
#
# YOUR OUTPUT:
# x=1
# x=2
# x=3
#

# ====================
# Mini assignment
# ====================
# Write code that:
# - Loops over numbers 1..20
# - Prints "Fizz" if divisible by 3
# - Prints "Buzz" if divisible by 5
# - Prints "FizzBuzz" if divisible by both
# - Otherwise prints the number
#
# YOUR ANSWER:
# for ($i = 1; $i -le 20; $i++) {
#     if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
#         "FizzBuzz" }
#    elseif ($i % 3 -eq 0) {
#        "Fizz" }
#    elseif ($i % 5 -eq 0) {
#        "Buzz" }
#    else {
#        $i } 
# }
#
# STOP: When done, reply “Lesson 04 done”.

<#
====================
Lesson 04 validation (Copilot)

Overall: Great — you’ve got the core control-flow tools down.

Highlights
- Task 1: Correct branching.
- Task 2: Correct `-like` vs `-match` explanation.
- Task 3: Correct understanding; `switch` is cleaner and easier to extend/read.
- Task 4/5: Correct — `$name` is the current element; `$_` is the current pipeline item.
- Task 6/7: Correct; good intuition about index-based looping.
- FizzBuzz: Correct logic (best practice: check FizzBuzz first, which you did).

Tiny improvement
- When pasting outputs in these workbooks, keep them commented with `#` so the file remains runnable end-to-end.

Ready for Lesson 05.
====================
#>
