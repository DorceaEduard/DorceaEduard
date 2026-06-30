---
name: arscontexta-reweave
description: 'Update old notes with new connections and insights. Backward pass that asks "what would be different if written today?". Run periodically for vault maintenance. Use: "reweave old notes", "backward maintenance", "/arscontexta:reweave".'
---

# Ars Contexta: Reweave

Update existing notes with new connections, improved understanding, and better phrasing. This is the backward maintenance pass that prevents knowledge degradation.

## Trigger

Run:
- After every 10 new notes created
- On demand with explicit request
- As part of regular maintenance cycle

## Workflow

1. **Select candidates** — Notes that:
   - Havent been updated in 30+ days
   - Have fewer connections than expected for their type
   - Contain terms that now have dedicated notes
   - Were created during the initial vault population (likely lower quality)
2. **Analyze per note**:
   - Read the note
   - Read all notes it links to
   - Search for new notes that reference related concepts
   - Identify missing connections, stale phrasing, incomplete reasoning
3. **Apply updates**:
   - Add new wiki-links to relevant newer notes
   - Refine description if vague
   - Add body section for new understanding
   - Never destroy original meaning; always append or clarify
4. **Log** — Record reweave actions in ops/observations/

## Reweave Principles

- **Preservation first** — Never delete content; add new understanding alongside
- **Connection quality** — Every added link must be semantically justified
- **Minimal edit** — Change only what improves future discovery
- **Timestamp** — Update modified date in YAML

## Quality

- Each reweave session processes 3-5 notes
- Each note gains 1-3 new connections
- No deletion of original insight
- Changes logged for audit
