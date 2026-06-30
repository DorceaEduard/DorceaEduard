---
name: arscontexta-learn
description: 'Review accumulated friction signals and observations. Identify patterns and suggest methodology refinements. Use: "review observations", "what have we learned", "/arscontexta:learn".'
---

# Ars Contexta: Learn

Review friction signals and operational observations. You identify patterns across sessions and suggest methodology improvements.

## Workflow

1. **Gather** — Read all observations from ops/observations/
2. **Categorize** — Group by: friction, insight, refinement, configuration-issue
3. **Pattern Detection** — Look for:
   - Repeated friction signals (same issue appearing multiple times)
   - Successful workarounds (user adaptations to system limitations)
   - Configuration mismatches (derivation choices that caused friction)
   - Opportunity signals (recurring suggestions for improvement)
4. **Assess** — For each pattern:
   - Frequency (how many observations)
   - Impact (how much friction/gain per occurrence)
   - Fix difficulty (easy / moderate / hard)
   - Priority (based on frequency * impact)
5. **Recommend** — Suggest:
   - Configuration changes (update ops/config.yaml)
   - Methodology updates (update self/methodology.md)
   - New templates or schemas
   - Skill usage adjustments

## Output

- Top 3 patterns by priority
- Recommended changes with rationale
- Changes to self/methodology.md if applicable
- Log to ops/observations/review-YYYY-MM-DD.md

## Review Cadence

- After every 10 observations collected
- On demand with explicit request
- Every 30 days regardless
