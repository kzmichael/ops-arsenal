# Sr DevOps Roadmap (Basics → Advanced)

Assumption: ~10 hrs/week focused study + hands-on labs. If you can do ~20 hrs/week, halve the durations.

## Phase 1 — Foundations (Weeks 1–6)
| Area | Topics (checklist) | Est. time | “Done when you can…” |
|---|---|---:|---|
| Linux / OS | filesystem/permissions, users/groups, processes, systemd, networking tools, packages, logs, storage basics | 2–3 w | debug a failing service end-to-end |
| Networking | TCP/IP, CIDR/subnets, routing, DNS, HTTP(S), TLS/certs, proxies/LB, firewalls/NAT | 2–3 w | explain + troubleshoot a 503/timeouts |
| Git | branching/rebase, PR workflow, tags/releases, troubleshooting conflicts | 0.5–1 w | keep clean history + recover from mistakes |
| Bash scripting | loops/conditions, text processing (grep/sed/awk), exit codes, traps, CLI ergonomics | 1–2 w | write safe automation with retries/logs |
| PowerShell scripting | objects/pipelines, remoting basics, modules, error handling | 0.5–1 w | automate Windows tasks reliably |

## Phase 2 — Coding for Automation (Weeks 7–12)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Python scripting | requests/CLI tools, JSON/YAML, subprocess, virtualenv, tests (pytest), packaging basics | 2–3 w | build + ship an internal CLI tool |
| Go scripting | modules, CLI, concurrency basics, HTTP clients, testing | 2–3 w | write a small controller/worker safely |
| APIs & data | REST, auth (tokens/OAuth), idempotency, retries/backoff, pagination | 1–2 w | integrate 2 systems without flakes |

## Phase 3 — Containers → Kubernetes (Weeks 13–24)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Docker | images/layers, multi-stage builds, volumes/networks, compose, registries, security basics | 2–3 w | produce small, secure images consistently |
| Kubernetes core | control plane, pods/deployments/jobs, services/ingress, config/secrets, RBAC, storage, autoscaling, upgrades | 6–8 w | deploy + debug prod-like workloads |
| Helm | charts/values, templating, releases, chart testing patterns | 1–2 w | maintain reusable charts across envs |

## Phase 4 — Delivery & GitOps (Weeks 25–32)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| GitHub Actions | workflows, caching, matrix, secrets, environments, reusable workflows | 1–2 w | build/test/release with guardrails |
| Jenkins | pipelines, agents, credentials, shared libs | 1–2 w | run reliable pipelines at scale |
| Groovy scripting | Jenkinsfile patterns, shared library structure | 0.5–1 w | refactor pipelines without copy/paste |
| ArgoCD (GitOps) | app-of-apps, sync waves, RBAC, multi-env promotion, drift detection | 2–3 w | Git is the source of truth end-to-end |

## Phase 5 — IaC & Configuration (Weeks 33–44)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Terraform | modules, state/locks, workspaces/envs, CI plan/apply, drift, import, testing (tflint/terratest optional) | 4–6 w | manage infra safely with reviews |
| Ansible | inventory, roles, idempotency, secrets handling, Galaxy, linting | 2–3 w | configure fleets repeatably |
| Policy as Code | OPA/Gatekeeper or Kyverno, Terraform policy (Sentinel/OPA) basics | 1–2 w | prevent bad changes automatically |

## Phase 6 — Networking at Scale + Service Mesh (Weeks 45–50)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Kubernetes networking deep dive | CNI concepts, NetworkPolicies, ingress controllers, egress, DNS/CoreDNS | 1–2 w | debug network issues without guesswork |
| Istio service mesh | sidecars/ambient basics, mTLS, traffic mgmt, authz, telemetry | 2–3 w | do safe canary/routing + enforce mTLS |

## Phase 7 — Observability & SRE (Weeks 51–60)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Prometheus | scrape/labels, recording rules, alerting, exporters, HA basics | 2–3 w | build actionable alerts (not spam) |
| Grafana | dashboards, templating, alert routes, on-call hygiene | 1–2 w | answer “what changed?” in minutes |
| Logging | Fluent Bit/Vector, Loki/ELK basics, structured logs, retention | 1–2 w | correlate logs with deploys/incidents |
| Tracing | OpenTelemetry basics, Jaeger/Tempo, context propagation | 1–2 w | trace a request across services |
| SLOs | SLIs/SLOs, error budgets, incident postmortems | 1–2 w | define SLOs and use them operationally |

## Phase 8 — Cloud & Security (Weeks 61–76)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Cloud (pick 1 primary) | AWS/Azure/GCP: IAM, networking, compute, storage, managed k8s, load balancing, autoscaling, DNS | 6–10 w | design a secure, scalable baseline |
| Security fundamentals | least privilege, secrets mgmt, key rotation, TLS, vuln scanning, supply chain basics | 2–3 w | ship securely by default |
| Kubernetes security | RBAC, Pod Security, admission policies, runtime basics, image signing/verification (optional) | 2–3 w | pass a basic cluster security review |
| Cost & reliability | tagging, budgets, autoscaling policy, capacity planning, backups/DR | 1–2 w | reduce cost without risk increases |

## Phase 9 — Sr-Level Architecture (Weeks 77–90)
| Area | Topics | Est. time | Done when… |
|---|---|---:|---|
| Platform engineering | golden paths, templates, self-service, developer experience, docs | 2–4 w | teams onboard in hours, not weeks |
| Multi-cluster/multi-region | cluster fleet mgmt, traffic steering, DR patterns | 2–4 w | articulate tradeoffs + run drills |
| Internal developer portal (optional) | Backstage basics, service catalog, templates | 1–2 w | provide discoverability + ownership |
| Control planes (optional) | Crossplane basics, Terraform orchestration patterns | 1–2 w | manage platforms with abstractions |

## Capstones (recommended)
Pick 2 (each 2–4 weeks):
- **GitOps Kubernetes platform**: EKS/AKS/GKE + ArgoCD + Helm + Terraform + SSO/RBAC + secrets + multi-env promotion.
- **CI/CD modernization**: migrate Jenkins → GitHub Actions (or standardize both), add reusable workflows, artifact signing, quality gates.
- **Observability program**: Prometheus + Grafana + logs + tracing + SLOs + alert tuning + runbooks.
- **Service mesh rollout**: Istio mTLS + canary/traffic shifting + authz policies + rollback playbooks.

## Ongoing Sr DevOps habits (do weekly)
- Write design docs (tradeoffs, risks, rollout/rollback), run incident reviews, mentor others, and measure outcomes (lead time, MTTR, change fail rate).
