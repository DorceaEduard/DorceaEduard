---
name: arscontexta-next
description: 'Suggest the next best action for your knowledge system. Context-aware recommendations based on vault state. Use: "what should I do next", "what needs attention", "/arscontexta:next".'
---

# Ars Contexta: Next

Context-aware recommendation engine. You analyze the current vault state and session context to suggest the most valuable next action.

## Decision Factors

1. **Queue depth** — Items waiting for reflect or reweave
2. **Health status** — Latest health report issues
3. **Session phase** — Beginning (orient), middle (work), end (persist)
4. **Recent activity** — What was last done
5. **Time since last maintenance** — When was verify or health last run
6. **Friction signals** — Unreviewed observations
7. **Derivation drift** — System changes not reflected in methodology

## Recommendation Categories

- **Processing** — "There are 5 items in the queue. Run reflect."
- **Maintenance** — "Health check shows 12% orphan rate. Run verify."
- **Growth** — "Your notes on X are well-developed. Consider seeding a related topic."
- **Meta** — "Review recent friction signals to improve methodology."
- **Session Management** — "Save session learnings before closing."

## Prioritization

- Critical (broken links, queue overflow) first
- Maintenance (orphan detection, health checks) second
- Growth (seeding, new connections) third
- Meta (methodology refinement) last
