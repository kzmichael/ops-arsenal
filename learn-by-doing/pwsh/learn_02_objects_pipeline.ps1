<#
LESSON 02: Objects + Pipeline (Workbook)
Goal: Understand that the pipeline passes objects, and learn how to inspect/filter/select them.

How to use:
- Run each command in `pwsh`.
- Paste short outputs.
- Fill in YOUR ANSWER lines.

Do not paste secrets.
#>

# ====================
# Task 1 — Objects, not text
# ====================
# Run:
#   $d = Get-Date
#   $d
#   $d.GetType().FullName
#   $d | Get-Member
#
# YOUR OUTPUT (type + 2-3 member names you saw):
# Add, Compareto, deconstruct, etc.
#
# Questions:
# Q1) Is `$d` a string, or a DateTime object?
# YOUR ANSWER: datetime object, because Get-Date returns a DateTime object, and $d is assigned the output of Get-Date. Also, $d.GetType().FullName shows that it is a System.DateTime object.
#
# Q2) Name one property and one method you saw on `$d`.
# YOUR ANSWER: Addminutes (method), Day (property)
#

# ====================
# Task 2 — The pipeline passes objects
# ====================
# Run:
#   Get-Process | Select-Object -First 1
#   Get-Process | Select-Object -First 1 | Get-Member
#
# YOUR OUTPUT (the process Name + the type name from Get-Member):
#PS /Users/kshitizmichael/KodeKloud/learn-by-doing> Get-Process | Select-Object -First 1
#
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    -----      -----     ------      --  -- -----------
#      0     0.00       0.00       0.00       0 …99
#
# PS /Users/kshitizmichael/KodeKloud/learn-by-doing> Get-Process | Select-Object -First 1 | Get-Member
#
# TypeName: System.Diagnostics.Process
#
# Question:
# Q1) What is flowing through the pipeline here—text lines or objects?
# YOUR ANSWER:
# Objects, because Get-Process returns a collection of Process objects, and Select-Object -First 1 selects the first Process object from the collection. Then Get-Member shows that the type of the object is System.Diagnostics.Process, which confirms that it is an object flowing through the pipeline, not text lines.

# ====================
# Task 3 — Select vs Where
# ====================
# Run:
#   Get-Process | Select-Object -First 5 Name,Id
#   Get-Process | Where-Object CPU -gt 1 | Select-Object -First 5 Name,CPU,Id
#
# YOUR OUTPUT (paste the 2nd command’s first 5 rows):
# Name              CPU    Id
# ----              ---    --
# accountsd       3.631 98843
# akd             4.446   968
# Appearance      2.346 74374
# AppleIDSettings 1.275 65618
# AppleSpell      5.885  1254
#
# Questions:
# Q1) In your words, what does `Where-Object` do?
# YOUR ANSWER: it puts a conditional on the object flowing ad outputs object that meet the condition
#
# Q2) In your words, what does `Select-Object` do?
# YOUR ANSWER: select object select specific properties of the object flowing through the pipeline, and can also limit the number of objects passed through with -First or -Last parameters.
#

# ====================
# Task 4 — Sorting
# ====================
# Run:
#   Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 Name,CPU,Id
#
# YOUR OUTPUT (top 5):
#
# Name                      CPU    Id
# ----                      ---    --
# WhatsApp             6646.168 28299
# Google Chrome        2917.238  1120
# Google Chrome Helper 2551.160  1249
# Google Chrome Helper 1824.783 90750
# Code Helper (Plugin)  994.572  1295
#
# Question:
# Q1) Why do we Sort BEFORE Select-Object -First 5?
# YOUR ANSWER: Because we want the selecte objects to be sorted by cpu usage before we select the top 5. If we did Select-Object -First 5 before sorting, we would just get the first 5 processes in the default order, which may not be the top CPU consumers.
#

# ====================
# Task 5 — Format cmdlets are for display
# ====================
# Run:
#   $p = Get-Process | Select-Object -First 3
#   $p | Select-Object Name,Id
#   $p | Format-Table Name,Id
#   ($p | Format-Table Name,Id) | Get-Member
#
# YOUR OUTPUT (what type does the last Get-Member show?):
#
# TypeName: Selected.System.Diagnostics.Process
#
# Name        MemberType   Definition
# ----        ----------   ----------
# Equals      Method       bool Equals(System.Object obj)
# GetHashCode Method       int GetHashCode()
# GetType     Method       type GetType()
# ToString    Method       string ToString()
# Id          NoteProperty int Id=0
# Name        NoteProperty string Name=
#
# Question:
# Q1) What’s the practical rule about using `Format-Table` in pipelines?
# YOUR ANSWER: The output of the format table is somehitng that you keep for display cause the format changes and you cant you the object like you will be 
#

# ====================
# Checkpoint (tiny quiz)
# ====================
# 1) What does `Get-Member` help you discover?
# YOUR ANSWER: Get-Member helps you discover the properties and methods of the objects flowing through the pipeline, as well as their types. It shows you what you can do with the objects and what information they contain.
#
# 2) What’s the difference between `-like` and `-match`?
# YOUR ANSWER: like is something you can use with wildcards and is case-insensitive, while -match uses regular expressions for more complex pattern matching and is also case-insensitive by default. So -like is simpler and good for basic wildcard matching, while -match is more powerful for advanced string matching scenarios.
#
# 3) Write a one-liner: top 3 processes by CPU showing Name,CPU.
# YOUR ANSWER: Get-Process | Sort-Object CPU -Descending | Select-Object -First 3 Name,CPU
#
# STOP: When done, reply “Lesson 02 done”.

<#
====================
Lesson 02 validation (Copilot)

Overall: Solid understanding of objects + pipeline.

What you got right
- Task 1/2: Correct: cmdlets output objects (e.g., `[datetime]`, `System.Diagnostics.Process`).
- Task 3: Correct: `Where-Object` filters; `Select-Object` shapes/limits.
- Task 4: Correct: sort first, then take top N.
- Checkpoint: Q1/Q2 correct; Q3 command correct.

One important rule to keep
- `Format-Table` (and other `Format-*`) should be the LAST step; use `Select-Object` if you want to keep working with objects.

Ready for Lesson 03.
====================
#>
