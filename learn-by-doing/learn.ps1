<#
PowerShell Learning Workbook

How we'll use this repo:
- Each major topic = a new lesson file (e.g., learn_01_help.ps1, learn_02_objects.ps1).
- You write answers directly in the file under "YOUR ANSWER".
- You paste *short* command outputs under "YOUR OUTPUT".

Notes:
- Don’t paste secrets (tokens, keys, passwords).
- Run commands in PowerShell (`pwsh` on macOS), not zsh.
#>

<#
====================
LESSON 01: Help system + command discovery
File: learn.ps1 (Lesson 01)
Goal: Get comfortable finding commands and reading help without Googling.

What to do:
1) Open a terminal and run: pwsh
2) Run the commands in each task.
3) Fill in answers and paste small outputs below.

Tip: If help pages are long, use:
	Get-Help <command> -Full | Out-Host -Paging
====================
#>

<#
Task 1 — Verify you are in PowerShell

Run:
	$PSVersionTable.PSVersion
	$env:SHELL
	pwd

YOUR OUTPUT (paste):

Major  Minor  Patch  PreReleaseLabel BuildLabel
-----  -----  -----  --------------- ----------
7      5      4   
/bin/zsh
Path
----
/Users/kshitizmichael/KodeKloud/learn-by-doing
Quick check questions:
Q1) What does `pwd` show you?
YOUR ANSWER: present working directory

Q2) Is `$env:SHELL` the shell you started in, or the parent shell? (Your best guess is fine.)
YOUR ANSWER: parent shell, because I started PowerShell from zsh. So $env:SHELL shows the parent shell, which is zsh.

#>
<#
Task 2 — Understand cmdlets and Get-Command

Run:
	Get-Date
	Get-Command Get-Date

YOUR OUTPUT (paste only the Get-Command table line):

Friday, February 6, 2026 12:51:03 PM

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Get-Date                                           7.0.0.0    Microsoft…

Questions:
Q1) What is the CommandType for Get-Date?
YOUR ANSWER: Cmdlet

Q2) What is the Source module shown for Get-Date?
YOUR ANSWER: Microsoft.PowerShell.Utility

#>
<#
Task 3 — Using Get-Help (core skill)

Run:
	Get-Help Get-Date
	Get-Help Get-Date -Examples
	Get-Help Get-Help -Full | Out-Host -Paging

Questions:
Q1) What does `-Examples` give you that the default help doesn’t?
YOUR ANSWER: gives all the differnt examples of how to use the command, which is not shown in the default help.

Q2) Pick ONE example parameter you didn’t know existed (e.g., -Format or -UFormat) and explain in 1 sentence.
YOUR ANSWER: The -UFormat parameter allows you to specify a custom date and time format string using Unix-style format specifiers, giving you more control over how the date is displayed.

Optional (only if it works):
	Update-Help

If Update-Help fails, paste just the error message (1-3 lines):
YOUR OUTPUT:

#>

<#
Task 4 — Finding commands when you don’t know the name

Run:
	Get-Command *date*
	Get-Command Get-*Item*

Questions:
Q1) What pattern did you use and what kinds of commands did it return?
YOUR ANSWER: Get-Command Get-*Item*
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Get-ChildItem                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Item                                           7.0.0.0    Microsoft.PowerShell.Management


Q2) Why is searching by Verb-Noun patterns useful?
YOUR ANSWER: because many PowerShell commands follow the Verb-Noun naming convention, so if you know the action (Verb) and the object type (Noun), you can discover relevant commands even if you dont remember their exact names.

#>
<#
Task 5 — File listing command discovery (no Googling)

Run:
	Get-Command *childitem*
	Get-Help Get-ChildItem -Examples
	Get-ChildItem

YOUR OUTPUT (paste top ~5 lines of Get-ChildItem output):

    Directory: /Users/kshitizmichael/KodeKloud/learn-by-doing

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
-rw-r--r-- kshitizmic staff        2/6/2026 12:59         4235 learn.ps1
                 hael

Questions:
Q1) What does Get-ChildItem do in your own words?
YOUR ANSWER: it shows all the files in the current directory, along with their permissions, owner, group, last write time, size, and name.

Q2) What is one useful parameter you noticed in the examples? (Just name it.)
YOUR ANSWER: -Exclude

#>
<#
STOP HERE

When you finish, tell me:
- "Lesson 01 done" and any questions you had
Then I’ll validate your answers and we’ll create the next file: learn_02_objects_pipeline.ps1
#>

<#
====================
Lesson 01 validation (Copilot)

Task 1
- Q1: Correct.
- Q2: Correct (on macOS, $env:SHELL commonly reflects your login/parent shell).

Task 2
- Q1/Q2: Correct.

Task 3
- Q1: Correct.
- Q2: Correct.

Task 4
- Q1: Good; next time also try `Get-Command *date*` and compare results.
- Q2: Correct.

Task 5
- Q1: Correct.
- Q2: Good choice: `-Exclude`.

Ready for Lesson 02.
====================
#>

