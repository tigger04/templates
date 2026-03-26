<!-- ISSUE TEMPLATE
     Copy this into a new GitHub issue body and fill in the sections.
     Delete guidance comments before submitting.

     Rules (from ISSUES.md):
     - Every issue needs: problem statement, solution, AC table.
     - One AC table per issue, in the body. Never duplicate it in comments.
     - If the solution changes, edit it in place — don't add superseding comments.
     - Sub-issues must also be well-formed (not lightweight stubs).
-->

## Problem

<!-- What's wrong, or what's missing? Be concrete:
     - Current behaviour vs expected behaviour (for bugs)
     - What the user needs to do and why they can't (for features)
     - Include version, error output, or screenshots if relevant.
-->

{Describe the problem.}

## Solution

<!-- How to fix or implement it. Include:
     - The approach (what changes, where)
     - If there are multiple options, list them all with trade-offs
       and recommend one.
     - "Changes required" — list each file that needs modification
       and what changes in each.
     - "What this does NOT change" — clarify scope boundaries
       to prevent scope creep.
-->

{Describe the solution.}

### Changes required

1. **`{file}`** — {what changes and why}
2. **`{file}`** — {what changes and why}

## Acceptance Criteria

<!-- CRITICAL — read carefully:

     AC column: a PASSIVE STATE OF THE SYSTEM, not a test action.
       WRONG: "Call the API with bad input and assert 400."
       RIGHT: "The API rejects malformed input with HTTP 400."
     If it contains "call", "assert", "send", "check", "verify",
     or "should return" — it belongs in the Test column, not here.

     Test column: how to confirm the AC. Name tests with IDs:
       RT-NNN (regression), OT-NNN (one-off), UT-NNN (user/manual).
       Briefly describe stimulus → expected output.
       Multiple tests per AC are fine.

     ID format: AC{issue_number}.{n} — e.g. AC42.1, AC42.2.
     Allocate test IDs from tests/NEXT_IDS.txt.
-->

| ID | AC | Test | Status |
|----|-----|------|--------|
| AC{N}.1 | {Passive system state — "Given [context], [system] [does/returns/rejects] [X]."} | {RT/OT/UT-NNN}: {stimulus → expected output} | `pending` |
| AC{N}.2 | {Next acceptance criterion} | {RT/OT/UT-NNN}: {stimulus → expected output} | `pending` |
