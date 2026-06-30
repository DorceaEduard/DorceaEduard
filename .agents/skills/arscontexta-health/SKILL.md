---
name: arscontexta-health
description: 'Full vault health diagnostics across 8 categories with 3 severity modes. Comprehensive system audit. Use: "check vault health", "vault diagnostics", "/arscontexta:health".'
---

# Ars Contexta: Health

Full vault health diagnostic across 8 health categories. Reports system-wide issues and actionable recommendations.

## 8 Health Categories

1. **Note Quality** — Description field presence, YAML schema compliance
2. **Graph Health** — Link resolution, orphan rate, average links per note
3. **MOC Integrity** — Every note in at least one MOC, MOC hierarchy coherent
4. **Processing Pipeline** — Queue depth, bottleneck identification
5. **Self Space Health** — Identity/methodology/goals up to date, no bloat
6. **Operations Hygiene** — Session logs trimmed, temp files cleaned
7. **Friction Signals** — Review ops/observations/ for recurring patterns
8. **Derivation Drift** — Does current practice still match derivation?

## Severity Modes

- **Quick** — Categories 1-2, basic checks
- **Standard** — Categories 1-5, detailed checks
- **Full** — All 8 categories with deep inspection

## Output

Write to ops/health/latest.md:
- Per-category status (healthy / warning / critical)
- Key metrics (orphan %, link density, queue depth)
- Top 3 recommended actions
- Changes since last health report (if available)

## Thresholds

- Orphan rate >10%: warning, >25%: critical
- Link density <1.5 avg links/note: warning, <1.0: critical
- Queue depth >20 items: warning, >50: critical
- Sessions without log: warning
- Deriviation drift detected: critical
