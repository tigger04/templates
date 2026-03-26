<!-- Version: 0.1 | Last updated: YYYY-MM-DD -->

# Testing

## Strategy

<!-- One-line summary: what framework, what approach, how tests are run. -->

Testing follows TDD per project standards. All tests use {framework} and run via `make test`.

## Test types

<!-- Table of test types used in this project.
     Adapt the types to what actually applies — not every project needs all four.
     Common types: unit, integration, end-to-end, quality/validation. -->

| Type | Scope | Location | Speed |
|---|---|---|---|
| Unit | Individual functions, data structures | `tests/regression/` | Fast (<1s) |
| Integration | Multiple components working together | `tests/regression/` | Medium (<5s) |
| End-to-end | Full CLI invocation via subprocess | `tests/regression/` | Slow (<30s) |

## Test structure

<!-- Show the test directory layout.
     List each test file with a brief description of what it covers.
     This helps newcomers find where to add new tests. -->

```
tests/
├── regression/
│   ├── test_{area_1}.{ext}      # {what it tests}
│   ├── test_{area_2}.{ext}      # {what it tests}
│   └── test_{area_3}.{ext}      # {what it tests}
├── one_off/
│   └── .gitkeep
└── NEXT_IDS.txt                 # Test ID allocation
```

## Test IDs

<!-- Standard across all projects — ID format and allocation. -->

Per project standards, all tests carry unique IDs:

| Prefix | Type | Run by |
|---|---|---|
| `RT-NNN` | Regression test | `make test` |
| `OT-NNN` | One-off test | `make test-one-off` |
| `UT-NNN` | User test | Manual |

IDs are allocated from `tests/NEXT_IDS.txt`.

## Test data

<!-- Describe how test data is generated/sourced.
     Key rules:
     - No production data in tests
     - Deterministic (no unseeded randomness)
     - Small inputs for speed
     - Synthetic/generated, not copied from real users -->

Test data is {synthetic/generated/fixture-based}. No production data, copyrighted content, or user data in the test suite.

## Makefile targets

<!-- Standard targets — adapt the runner command to the project's language. -->

```makefile
test            # {runner} tests/regression/ (all regression tests)
test-one-off    # Run one-off tests (optionally filtered by ISSUE=NNN)
```

## See also

- [Architecture](architecture.md) — component overview
- [Implementation plan](implementation-plan.md) — which phases introduce which tests
