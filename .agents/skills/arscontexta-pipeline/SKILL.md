---
name: arscontexta-pipeline
description: 'Run the full processing pipeline: reduce -> reflect -> reweave -> verify. Batch process queued items. Use: "run pipeline", "process everything", "/arscontexta:pipeline".'
---

# Ars Contexta: Pipeline

Execute the full processing pipeline end-to-end. This chains together reduce (if input provided), reflect, reweave, and verify in sequence.

## Pipeline Stages

1. **Reduce** (if new input provided) — Extract structured notes from raw material
2. **Reflect** — Process the queue: find connections, update MOCs
3. **Reweave** — Select and update 3-5 older notes for maintenance
4. **Verify** — Run combined validation checks on the vault

## Pipeline Modes

- **Full** — All stages, with user input for reduce
- **Quick** — Reflect + Verify only (skip reduce and reweave)
- **Auto** — Detect what's needed based on queue state and last run time

## Output

Report to user:
- What each stage processed
- Key metrics (notes created, connections made, issues found)
- Warnings or failures per stage
- Overall pipeline health

## Queue Management

- Before pipeline: read ops/queue/ for items
- After reflect: clear processed items
- Log pipeline run to ops/sessions/ with timestamp
