# Lesson 01 — Go setup + tiny CLI (workbook)

## Task 1 — Verify Go
Run:
```bash
go version
```
If you don’t have Go installed, note that here (we’ll adjust).

**YOUR OUTPUT:**


## Task 2 — Create a tiny CLI
In this folder:
```bash
mkdir -p hello-go && cd hello-go
go mod init example.com/hello-go
```
Create `main.go`:
```go
package main

import (
	"flag"
	"fmt"
)

func main() {
	name := flag.String("name", "World", "name to greet")
	flag.Parse()
	fmt.Printf("Hello, %s\n", *name)
}
```
Run:
```bash
go run .
go run . -name Kshitiz
```

**YOUR OUTPUT:**


## Questions
1) What is `go.mod` for?
**YOUR ANSWER:**

2) What’s the Go equivalent of a Python virtual environment?
**YOUR ANSWER:**
