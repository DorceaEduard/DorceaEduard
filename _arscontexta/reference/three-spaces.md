# Three-Space Architecture Reference

Every generated system divides its workspace into three spaces: self, notes, and ops.

## Self Space — The Agent's Persistent Mind

**Durability:** Permanent. Content accumulates slowly.
**Growth pattern:** Slow — tens of files, not hundreds.
**Load pattern:** Full load at every session start.

Core files:
- identity.md — Who the agent is
- methodology.md — How the agent works
- goals.md — Current threads

## Notes Space — The User's Knowledge Graph

**Durability:** Permanent. Everything here should be worth finding again.
**Growth pattern:** Steady — varies by domain.
**Load pattern:** Progressive disclosure via MOC navigation, description queries, semantic search.

Structural constants:
- Flat folder (no subfolders)
- Prose-sentence titles
- MOC navigation
- Wiki links as graph edges
- Topics footer linking notes to MOCs

## Ops Space — Operational Coordination

**Durability:** Temporal. Content flows through.
**Growth pattern:** Fluctuating.
**Load pattern:** Targeted — queue status, session log, latest health report.

Contents:
- derivation.md — Original derivation rationale
- derivation-manifest.md — Version tracking
- reminders.md — Time-bound actions
- sessions/ — Session logs
- health/ — Validation snapshots
- observations/ — Operational learnings
- queue/ — Processing queue state
- methodology/ — Vault self-knowledge

## Six Failure Modes of Conflation

1. Ops into Notes — Search returns processing debris
2. Self into Notes — Schema confusion, search pollution
3. Notes into Ops — Insights trapped in temporal files
4. Self into Ops — Identity scattered across session logs
5. Ops into Self — Self bloats with temporal state
6. Notes into Self — Self space becomes second knowledge graph

## Memory Type Routing Decision Tree

Is this about the agent itself?
- YES, durable self-knowledge -> self/
- YES, temporal -> ops/
- NO, domain knowledge, durable -> notes/
- NO, domain knowledge, temporal -> ops/
- NO, operational coordination -> ops/
