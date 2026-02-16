# Lesson 01 — Python setup + tiny CLI (workbook)

## Task 1 — Verify Python
Run:
```bash
python3 --version
python3 -c "import sys; print(sys.executable)"
```
**YOUR OUTPUT:**


## Task 2 — Virtual env
Run:
```bash
python3 -m venv .venv
source .venv/bin/activate
python -V
pip -V
```
**YOUR OUTPUT:**


## Task 3 — Your first CLI file
Create `hello.py` in this folder with:
```python
import argparse

def main():
    p = argparse.ArgumentParser()
    p.add_argument('--name', default='World')
    args = p.parse_args()
    print(f"Hello, {args.name}")

if __name__ == '__main__':
    main()
```

Run:
```bash
python hello.py
python hello.py --name Kshitiz
```
**YOUR OUTPUT:**


## Questions
1) What is a virtual environment and why do we use it?
**YOUR ANSWER:**

2) What does `if __name__ == '__main__':` do?
**YOUR ANSWER:**
