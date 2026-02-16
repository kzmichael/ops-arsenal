# Lesson 01 — Linux filesystem + permissions (workbook)

## Task 1 — Where am I?
Run:
```bash
pwd
ls
ls -la
```
**YOUR OUTPUT (paste 3–8 lines):**


## Task 2 — Paths + navigation
Run:
```bash
cd ..
pwd
cd -
pwd
```
**YOUR ANSWER:** What does `cd -` do?


## Task 3 — Create files/folders safely
Run:
```bash
mkdir -p /tmp/devops-week1
cd /tmp/devops-week1
mkdir data logs
touch data/a.txt data/b.txt
ls -R
```
**YOUR OUTPUT (paste `ls -R`):**


## Task 4 — Permissions basics
Run:
```bash
stat -f "%N %Sp" data/a.txt  # macOS
ls -l data/a.txt
chmod 600 data/a.txt
ls -l data/a.txt
chmod 644 data/a.txt
ls -l data/a.txt
```
**YOUR ANSWER:** What changed when you used `chmod 600` vs `chmod 644`?


## Task 5 — Ownership (concept)
**YOUR ANSWER:** What’s the difference between *owner*, *group*, and *others*?


## Mini assignment
1) Make a script file `run.sh`
2) Give it execute permission
3) Run it

Commands you can use:
```bash
cd /tmp/devops-week1
printf '%s\n' '#!/usr/bin/env bash' 'echo "hello"' > run.sh
chmod +x run.sh
./run.sh
```
**YOUR OUTPUT:**

