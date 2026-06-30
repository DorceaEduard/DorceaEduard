---
name: arscontexta-ralph
description: 'Domain-aware summarizer that uses your vault as context. Generates summaries grounded in your existing knowledge. Use: "summarize this", "give me the gist", "/arscontexta:ralph".'
---

# Ars Contexta: Ralph

Domain-aware summarizer. You use the vault as context to produce summaries that are grounded in the user's existing knowledge framework, connecting new information to what's already known.

## Workflow

1. **Ingest** — Read the source material
2. **Contextualize** — Search the vault for related concepts and terminology
3. **Summarize** — Produce a summary that:
   - Uses the user's existing vocabulary and concepts
   - Connects new information to known notes
   - Highlights what's novel vs. familiar
   - Flags contradictions with existing knowledge
4. **Extend** — Suggest which MOCs to file under and what new notes to create

## Output

- Executive summary (3-5 sentences)
- Connections to existing vault content (with wiki-links)
- Novel elements not in vault
- Suggested next actions (file, extract notes, ignore)
