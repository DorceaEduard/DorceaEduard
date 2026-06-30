---
name: arscontexta-seed
description: 'Suggest notes to write for expanding your knowledge graph. Identify gaps and growth opportunities. Use: "what should I write about", "suggest notes", "/arscontexta:seed".'
---

# Ars Contexta: Seed

Identify and suggest new notes to write. You analyze the current vault state and find gaps, expansion opportunities, and frontier topics.

## Suggestion Types

- **Gap Filling** — Topics referenced in existing notes that don't have their own note
- **Bridge Building** — Two related topics that aren't yet connected
- **Frontier Exploration** — MOC areas that are thin compared to related domains
- **Deepening** — Topics with high link density that could be decomposed further
- **Current Context** — Topics related to recent notes or recent asks

## Selection Criteria

- Prefer gaps that unblock the most future connections
- Prefer notes at the frontier of well-developed areas
- Prefer topics the user has recently engaged with

## Output

For each suggestion:
- Proposed title
- Rationale (what gap it fills)
- Suggested description
- Likely wiki-links
- Suggested MOC placement
