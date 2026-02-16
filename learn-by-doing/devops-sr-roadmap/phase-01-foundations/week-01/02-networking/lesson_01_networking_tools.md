# Lesson 01 — Networking tools (workbook)

## Task 1 — IP + interfaces
Run:
```bash
ifconfig | head -n 40   # macOS
```
**YOUR ANSWER:** Find your active interface name (e.g., `en0`) and your IPv4 address (if present).


## Task 2 — DNS resolution
Run:
```bash
nslookup github.com
```
**YOUR OUTPUT (paste the IPs):**


## Task 3 — Connectivity basics
Run:
```bash
ping -c 3 github.com
```
**YOUR ANSWER:** What does “time=” roughly represent?


## Task 4 — HTTP vs HTTPS
Run:
```bash
curl -I http://example.com
curl -I https://example.com
```
**YOUR ANSWER:** What status codes did you get? Any redirect?


## Task 5 — Tracing routes
Run:
```bash
traceroute github.com | head -n 20
```
**YOUR ANSWER:** What is a “hop” in traceroute terms?


## Mini assignment
Use `curl` to fetch JSON and pretty-print it:
```bash
curl -s https://api.github.com | python3 -m json.tool | head
```
**YOUR OUTPUT (paste 5–10 lines):**

