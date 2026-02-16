# Lesson 02 — Python JSON + HTTP basics (workbook)

## Task 1 — JSON parse
Run:
```bash
python3 - <<'PY'
import json
s = '{"name":"k","n":3}'
obj = json.loads(s)
print(obj["name"], obj["n"], type(obj["n"]))
PY
```
**YOUR OUTPUT:**


## Task 2 — Fetch from an API (no auth)
Run:
```bash
python3 - <<'PY'
import json, urllib.request
url = 'https://api.github.com'
with urllib.request.urlopen(url, timeout=10) as r:
    data = json.loads(r.read().decode('utf-8'))
print('keys:', sorted(list(data.keys()))[:8])
PY
```
**YOUR OUTPUT:**


## Questions
1) What’s the difference between JSON and a Python dict?
**YOUR ANSWER:**

2) What is a timeout and why is it important for automation?
**YOUR ANSWER:**
