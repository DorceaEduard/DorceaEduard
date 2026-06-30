# Knowledge System Failure Modes

How knowledge systems die. Used during setup to include domain-specific warnings.

## The 10 Failure Modes

### 1. Collector's Fallacy
Accumulating without processing. Inbox grows, nothing gets synthesized.
**Prevention:** Pipeline with reduce phase, WIP limits on inbox.
**Warning signs:** Inbox > 20 items. New captures outnumber processed 3:1.

### 2. Orphan Drift
Notes created but never connected. Graph fragments into disconnected islands.
**Prevention:** Mandatory reflect phase, MOC maintenance, orphan detection.
**Warning signs:** >10% notes with no incoming links. MOCs not updated in 30+ days.

### 3. Link Rot
Wiki-links pointing to renamed/deleted notes. Graph develops dead ends.
**Prevention:** Rename scripts update all refs, periodic link health checks.
**Warning signs:** >5% wiki-links unresolved. Renames without reference updates.

### 4. Schema Erosion
YAML fields inconsistently used, enum values drift, validation ignored.
**Prevention:** Single-source templates, validation automation, minimal viable schema.
**Warning signs:** >20% notes missing required fields. Unknown enum values appearing.

### 5. MOC Sprawl
Too many MOCs, none maintained. Navigation overhead exceeds value.
**Prevention:** Create MOCs only at 20+ notes, merge small ones, max 4 tiers.
**Warning signs:** MOCs with <5 links. >50% MOCs stale for 60+ days.

### 6. Verbatim Risk
Copying instead of transforming. Storage without the generation effect.
**Prevention:** Composability test ("This note argues that..."), source attribution.
**Warning signs:** Notes that read like summaries. Titles that are labels, not claims.

### 7. Cognitive Outsourcing
Delegating judgment entirely to the system. Quality drifts unnoticed.
**Prevention:** Periodic human review, never auto-implement changes, flag confidence.
**Warning signs:** No human review in 30+ days. No recent corrections.

### 8. Over-Automation
Hooks encoding judgment not verification. Quality corrupted silently.
**Prevention:** Determinism boundary — hooks verify, skills judge. Fail loudly.
**Warning signs:** Hooks auto-fixing content. No validation failures.

### 9. Productivity Porn
Building the system instead of using it. Meta-work displaces knowledge work.
**Prevention:** Gall's Law — ship minimum viable. Time-box improvement to <20%.
**Warning signs:** More time on config than on notes. System redesign before 100 notes.

### 10. Temporal Staleness
Content outdated but unflagged. Old notes presented as current.
**Prevention:** Staleness fields, periodic sweeps, date-aware health checks.
**Warning signs:** Notes referencing outdated info. No maintenance in changing domains.

## Domain Vulnerability Matrix

| Failure Mode | Research | Learning | Therapy | Creative | PM |
|---|---|---|---|---|---|
| Collector's Fallacy | HIGH | HIGH | medium | medium | medium |
| Orphan Drift | HIGH | HIGH | medium | medium | low |
| Link Rot | medium | medium | low | medium | low |
| Schema Erosion | medium | medium | medium | low | medium |
| MOC Sprawl | HIGH | medium | low | medium | low |
| Verbatim Risk | HIGH | HIGH | low | low | low |
| Cognitive Outsourcing | HIGH | medium | HIGH | medium | medium |
| Over-Automation | medium | medium | medium | low | medium |
| Productivity Porn | HIGH | medium | low | medium | HIGH |
| Temporal Staleness | low | medium | low | low | HIGH |

Include all HIGH-risk modes in generated context files.
