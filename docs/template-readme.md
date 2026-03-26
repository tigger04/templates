# {PROJECT}

<!-- One-paragraph description: what it does, how it does it, why it matters.
     Lead with the value proposition — what the user gets — not the technology.
     Keep it to 2-3 sentences. -->

{One-paragraph description.}

## Quickstart

<!-- The fastest path from zero to working. Ideally 2-3 commands.
     If the project is installed via Homebrew, show that.
     If it requires setup, show the minimum viable setup. -->

```bash
brew install tigger04/tap/{project}
{project} input.file
```

## Usage

<!-- Show the most common use cases, each with a one-line comment and a command.
     Start with the simplest invocation, then show variations.
     Group logically (basic usage, options, batch processing, etc.). -->

```bash
# Basic usage — describe what this does
{project} input.file

# With options
{project} --option value input.file

# Batch processing
{project} -o output/ *.files
```

<!-- If the project has significant configuration (parameters, models, modes),
     add a table or subsection here. -->

## Requirements

<!-- What the user needs to have installed or available.
     Be explicit about OS, runtime, and hardware requirements.
     If there are no external dependencies, say so. -->

- macOS 14 (Sonoma) or later
- {other requirements}

## Install

### Homebrew (recommended)

```bash
brew install tigger04/tap/{project}
```

### From source

<!-- Show the minimum steps to build and install from source.
     Include any prerequisites (Xcode CLI tools, Python version, etc.). -->

```bash
git clone https://github.com/tigger04/{project}.git
cd {project}
make install
```

## Makefile Targets

<!-- List all `make` targets that a user or contributor might use.
     Keep descriptions short — one line each. -->

| Target | Description |
|---|---|
| `make build` | Build release binary |
| `make test` | Run regression test suite |
| `make install` | Build + install locally |
| `make release` | Tag, build, push, update Homebrew formula |
| `make clean` | Remove build artefacts |
| `make sync` | Git add, commit, pull, push |

## Important files

<!-- List the key files/directories and their purpose.
     This helps newcomers orient themselves quickly.
     Don't list every file — just the ones that matter for understanding the project. -->

| File | Purpose |
|---|---|
| `Makefile` | Build, test, install, release entry points |
| `{main source}` | {description} |
| `tests/` | Test suite |
| `docs/` | Project documentation |

## Documentation

<!-- Link to each doc in docs/ with a brief description.
     Keep this table current when adding new docs. -->

| Document | Description |
|---|---|
| [Vision](docs/VISION.md) | Project goals, non-goals, and design philosophy |
| [Architecture](docs/architecture.md) | System design, data flow, component overview |
| [Testing](docs/testing.md) | Test strategy, coverage, and conventions |
| [Implementation plan](docs/implementation-plan.md) | Phased delivery plan with issue links |
| [Changelog](CHANGELOG.md) | Release history |

## Licence

MIT. Copyright Taḋg Paul.

<!-- If the project includes third-party components with their own licences,
     mention them here and link to THIRD_PARTY_LICENSES or the relevant doc. -->
