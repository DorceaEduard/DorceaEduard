---
name: arscontexta-reduce
description: 'Extract structured knowledge from source material. Create atomic notes with YAML frontmatter from conversations, papers, or raw text. Run when you have new content to process. Use: "reduce this", "extract notes from", "/arscontexta:reduce".'
---

# Ars Contexta: Reduce

Extract structured knowledge from source material into permanent notes. You convert unstructured input into atomic, wiki-linked notes following the vault's schema.

## Workflow

1. **Ingest** — Read source material (user paste, file reference, conversation)
2. **Analyze** — Identify distinct knowledge units (claims, concepts, questions, methods)
3. **Extract** — For each unit, create a note file with:
   - Prose-as-title (the insight itself)
   - YAML description (~150 characters, distinct from title)
   - Body with reasoning, evidence, source attribution
   - Wiki-links to related concepts
   - Topics footer linking to MOCs
4. **Link** — Create bidirectional connections where possible
5. **Queue** — Add each new note to ops/queue/ for reflect step

## Input Sources

- Pasted text from user
- References to specific files
- Conversation session logs
- Web search results

## Note Template

```yaml
---
description: A concise description that adds info beyond the title (~150 chars)
type: concept|claim|question|method|source
source: attribution string
created: YYYY-MM-DD
---
```

Body paragraphs with [[wiki-links]] to related concepts.

**Topics:** [[Domain MOC]] [[Related MOC]]

## Quality Gates

- Title must contain the insight, not just a label
- Description must differ from title
- At least one wiki-link to existing content
- Topics field with minimum 1 link
- Body has at least 2 sentences of reasoning

## Reduce Strategy

Read source -> chunk into atomic units -> assess note boundaries -> for each unit, generate note content -> write to [notes-folder]/ -> record in queue -> report counts.
