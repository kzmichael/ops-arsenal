# Lesson 01 — Jenkins basics (workbook)

Goal: Understand what Jenkins does and how a basic pipeline is structured.

## Task 1 — Concepts (no setup required)
**YOUR ANSWER:** In 2–4 lines, what is Jenkins and what problem does it solve?

**YOUR ANSWER:** What’s the difference between *CI* and *CD*?


## Task 2 — Pipeline mental model
A Jenkins pipeline usually has:
- an *agent* (where it runs)
- *stages* (logical steps)
- *steps* (shell commands)

**YOUR ANSWER:** What is a “stage” and why do we use stages?


## Task 3 — Read a Jenkinsfile
Here is a minimal declarative `Jenkinsfile`:
```groovy
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo build'
      }
    }
    stage('Test') {
      steps {
        sh 'echo test'
      }
    }
  }
}
```
**YOUR ANSWER:** What do `agent any` and `sh` mean here?


## Task 4 — Add one more stage
**YOUR ANSWER:** Add a `Lint` stage before `Test` that runs `sh 'echo lint'`.
Paste the updated Jenkinsfile snippet:

```groovy
// YOUR ANSWER
```


## Task 5 — Credentials (concept)
**YOUR ANSWER:** Why is storing secrets directly in a Jenkinsfile a bad idea?


## Mini assignment — Failure behavior
In Jenkins, a non-zero exit code fails a step.
**YOUR ANSWER:** What do you expect to happen if a stage runs `sh 'exit 1'`?

