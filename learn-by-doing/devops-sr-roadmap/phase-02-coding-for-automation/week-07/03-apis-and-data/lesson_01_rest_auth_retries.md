# Lesson 01 — REST basics + auth + retries (workbook)

## Task 1 — Read a response
Run:
```bash
curl -s -D /tmp/headers.txt -o /tmp/body.json https://api.github.com
head -n 20 /tmp/headers.txt
python3 -m json.tool < /tmp/body.json | head
```

**YOUR ANSWER:**
1) Name two HTTP headers you saw.
2) What status code did you get?


## Task 2 — Idempotency (concept)
**YOUR ANSWER:** In your own words, what does “idempotent” mean for an API call?


## Task 3 — Retry/backoff (concept)
**YOUR ANSWER:** Why is “retry with backoff” better than “retry immediately in a tight loop”?


## Mini assignment
Pick one of these and answer:
- A) What’s the difference between `401` and `403`?
- B) What’s the difference between `502`, `503`, and `504` (at a high level)?

**YOUR ANSWER:**
