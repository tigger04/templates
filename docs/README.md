# Documentation Templates

Templates for project documentation. Each template follows the structure and conventions used across tigoss projects, with guidance on what goes in each section.

## What's here

| Template | Destination | Purpose |
|---|---|---|
| [template-readme.md](template-readme.md) | `./README.md` | Project root — overview, quickstart, file listing, docs index |
| [template-vision.md](template-vision.md) | `./docs/VISION.md` | Why the project exists, what it does, and what it doesn't |
| [template-architecture.md](template-architecture.md) | `./docs/architecture.md` | System design, components, data flow |
| [template-testing.md](template-testing.md) | `./docs/testing.md` | Test strategy, structure, conventions |
| [template-implementation-plan.md](template-implementation-plan.md) | `./docs/implementation-plan.md` | Phased delivery plan with issue tracking |
| [template-changelog.md](template-changelog.md) | `./CHANGELOG.md` | User-facing change history per release |

## Usage

1. Copy the relevant template(s) into your project
2. Rename to the target filename (drop the `template-` prefix)
3. Replace placeholder text (`{PROJECT}`, `{description}`, etc.) with real content
4. Delete any sections that genuinely don't apply — but think twice before removing one
5. Update the version header date

## Conventions

All project documentation files under `./docs/` carry a version header:

```markdown
<!-- Version: 0.1 | Last updated: YYYY-MM-DD -->
```

Increment the version when making significant changes. The changelog at the bottom of each doc tracks what changed.

README.md at the project root does **not** use the version header (it's version-controlled via git).

## Which docs are required?

Every project needs at minimum:
- **README.md** — always
- **docs/VISION.md** — always
- **docs/architecture.md** — always (even for small projects — a brief overview is fine)
- **docs/testing.md** — always (if the project has tests)
- **docs/implementation-plan.md** — when the project has multiple delivery phases or tracked issues
- **CHANGELOG.md** — always (at the project root)
- LICENSE - always and mandatory if project is publicly visible in any way

Additional docs (feature-specific, model-licensing, etc.) are created as needed and listed in the README's documentation table.
