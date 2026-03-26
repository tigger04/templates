<!-- Version: 0.1 | Last updated: YYYY-MM-DD -->

# Architecture

## Overview

<!-- One paragraph: what the project is (technically), what it's built with,
     and how its concerns are separated.
     Name the language, key frameworks, and the major layers. -->

{PROJECT} is a {language} {type} that {does what} using {key frameworks}. The architecture separates concerns into {N} layers: {list layers}.

## System diagram

<!-- ASCII diagram showing the major components and data flow between them.
     Use box-drawing characters (┌─┐│└─┘) for clarity.
     Show the layers from top (user-facing) to bottom (infrastructure).
     Include the main data types flowing between components. -->

```
┌─────────────────────────────────────────────────┐
│  CLI / Interface layer                          │
│  {example invocation}                           │
└──────────────────────┬──────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────┐
│  Processing / Pipeline layer                    │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐      │
│  │ {Comp A} │─▶│ {Comp B} │─▶│ {Comp C} │      │
│  └──────────┘  └──────────┘  └──────────┘      │
└─────────────────────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────┐
│  Data / Infrastructure layer                    │
│  ┌──────────────┐  ┌──────────────┐             │
│  │ {Storage}    │  │ {External}   │             │
│  └──────────────┘  └──────────────┘             │
└─────────────────────────────────────────────────┘
```

## Components

<!-- Describe each major component. For each:
     - Name and source file(s)
     - What it does (responsibilities)
     - Key interfaces or data structures
     - Any non-obvious design decisions

     Group by layer (CLI, processing, data, etc.).
     Use ### for each component or group. -->

### CLI layer

<!-- Entry point, argument parsing, output formatting.
     Name the parsing library (ArgumentParser, argparse, clap, etc.).
     List responsibilities: parse, validate, dispatch, report, exit codes. -->

`{MainCommand}.{ext}` — uses {parser library}.

**Responsibilities:**
- Parse and validate CLI arguments
- Resolve input/output paths
- Report progress to stderr
- Exit codes: 0 success, 1 error, 2 misuse

### Processing layer

<!-- The core logic. Describe each component in the processing chain.
     For each, explain:
     - What it receives and produces
     - Key algorithm or approach (briefly)
     - Configurable parameters
     - Edge cases handled -->

**{Component A}** — {what it does, one sentence}.

**{Component B}** — {what it does, one sentence}.

### Data / infrastructure layer

<!-- Storage, caching, external services, model management, etc.
     For each, explain:
     - What data is stored/accessed
     - Where (filesystem paths, URLs, APIs)
     - Cache invalidation strategy (if applicable)
     - Resolution order (if multiple sources) -->

**{Storage/registry}** — {what it manages}.

## Data flow

<!-- Show the transformation of data from input to output.
     Use a vertical ASCII flow diagram.
     Annotate each step with [Component: what happens]. -->

```
input.file
    │
    ▼
[{Component A}: {transformation description}]
    │
    ▼
[{Component B}: {transformation description}]
    │
    ▼
[{Component C}: {transformation description}]
    │
    ▼
output.file
```

## Error handling

<!-- List the error conditions and how each is handled.
     Format: condition → action.
     All errors should go to stderr for CLI tools. -->

- Invalid input path: fail immediately with descriptive message
- {Error condition 2}: {action}
- {Error condition 3}: {action}

All errors go to stderr.

## External dependencies

<!-- Table of every external dependency.
     Include: name, type (Swift package, Python lib, system framework, external binary),
     and licence. This matters for distribution. -->

| Dependency | Type | Licence |
|---|---|---|
| {Dependency 1} | {type} | {licence} |
| {Dependency 2} | {type} | {licence} |

## See also

- [Vision](VISION.md) — project goals and non-goals
- [Testing](testing.md) — test strategy
- [Implementation plan](implementation-plan.md) — phased delivery
