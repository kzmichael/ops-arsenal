# Lesson 01 — Git basics + safe workflow (workbook)

## Task 1 — Identity + config
Run:
```bash
git --version
git config --global --get user.name
git config --global --get user.email
```
**YOUR ANSWER:** If either name/email is empty, do you know what you want to set it to?


## Task 2 — Create a sandbox repo
Run:
```bash
mkdir -p /tmp/git-week1 && cd /tmp/git-week1
git init
printf '%s\n' "# git-week1" > README.md
git status
```
**YOUR OUTPUT (paste `git status`):**


## Task 3 — Stage + commit
Run:
```bash
git add README.md
git commit -m "init"
git log --oneline --decorate -n 3
```
**YOUR OUTPUT (paste log):**


## Task 4 — Branching
Run:
```bash
git switch -c feature/demo
printf '%s\n' "more" >> README.md
git add README.md
git commit -m "update readme"
git log --oneline --decorate -n 5
```
**YOUR ANSWER:** What branch are you on after `git switch -c feature/demo`?


## Task 5 — Merge
Run:
```bash
git switch main
git merge feature/demo
git log --oneline --decorate -n 8
```
**YOUR ANSWER:** Was it a fast-forward merge? How can you tell from the log?


## Mini assignment
Create a mistake, then undo it safely:
1) Append a line to `README.md`
2) Use `git restore` to discard the change

**YOUR ANSWER (commands you ran):**

