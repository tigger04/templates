<!-- Version: 0.1 | Last updated: YYYY-MM-DD -->

# Implementation plan

## Overview

<!-- One-line summary of the delivery approach. -->

Delivery is phased. Each phase produces a working, testable increment. Phases are sequential unless noted otherwise.

## Execution order

<!-- Table showing the order issues should be tackled.
     Where multiple issues share a step number, they can be worked in parallel.
     Update the Status column as work progresses. -->

| Step | Issue | Description | Depends on | Status |
|---|---|---|---|---|
| 1 | [#{N}]({url}) | {Phase/task description} | — | pending |
| 2 | [#{N}]({url}) | {Phase/task description} | #{N} | pending |
| 3 | [#{N}]({url}) | {Phase/task description} | #{N} | pending |

## Roadmap

<!-- ASCII dependency graph showing how phases relate.
     Use arrows (──▶) for dependencies and completion markers (✓) for done.
     This is the visual complement to the execution order table. -->

```
#{N} {Phase 1} ──┐
                  │
                  ├──▶ #{N} {Phase 2}
                  │         │
                  │         ├──▶ #{N} {Phase 3a} ──┐
                  │         └──▶ #{N} {Phase 3b} ──┤
                  │                                 │
                  │                    #{N} {Phase 4}
                  │
                  └──▶ #{N} {Parallel track}
```

---

<!-- Repeat the following block for each phase.
     Each phase gets its own section with:
     - Goal (one sentence)
     - Tasks (numbered list)
     - Artefacts (what's produced)
     - Risk (if any — be honest about what might go wrong)
     - Milestone (how you know the phase is done) -->

## Phase 1: {Name} — [#{N}]({url})

**Goal:** {One sentence describing the desired outcome.}

**Tasks:**
1. {Task description}
2. {Task description}
3. {Task description}

**Artefacts:** {What this phase produces — files, binaries, configs, etc.}

**Risk:** {What might go wrong. If nothing significant, omit this line.}

**Milestone:** {Concrete, testable statement of completion.}

---

## Phase 2: {Name} — [#{N}]({url})

**Goal:** {One sentence.}

**Tasks:**
1. {Task}
2. {Task}

**Artefacts:** {What's produced.}

**Milestone:** {How you know it's done.}

---

<!-- Continue for each phase... -->

## Changelog

<!-- Track significant changes to the plan itself.
     This is NOT the project changelog — it's the plan's own revision history.
     Helps understand why the plan evolved. -->

| Version | Date | Changes |
|---|---|---|
| 0.1 | YYYY-MM-DD | Initial plan |

## See also

- [Vision](VISION.md) — project goals
- [Architecture](architecture.md) — system design
- [Testing](testing.md) — test strategy
