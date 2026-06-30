---
name: arscontexta-remember
description: 'Capture session learnings, insights, and friction signals to ops/observations/. Run at end of session or when insights surface. Use: "save this insight", "remember that", "/arscontexta:remember".'
---

# Ars Contexta: Remember

Capture operational learnings and insights that emerge during a session. This is the persist phase of the session rhythm.

## What to Capture

- **Insights** — Unexpected discoveries or realizations
- **Friction Signals** — Things that were harder than expected
- **Pattern Breaks** — Vault patterns that caused confusion
- **Method Refinements** — Improvements to workflow
- **Connection Opportunities** — Notes that should exist but dont
- **Configuration Issues** — Derivation choices that caused friction

## Output

Write to ops/observations/YYYY-MM-DD-topic.md:

```yaml
---
type: observation|friction|insight|refinement
session: YYYY-MM-DD
related: [[relevant note]] [[another note]]
---
```

Body: What happened, why it matters, what to do about it.

## Timing

- End of every session
- When a friction signal is fresh
- When methodology changes are discovered
- After significant vault operations

## Review Cycle

Observations are fed to arscontexta-learn for periodic review.
