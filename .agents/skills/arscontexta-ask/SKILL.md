---
name: arscontexta-ask
description: 'Query your research knowledge graph. Find notes by concept, connection, or criteria. Use when you need to retrieve knowledge from your vault. Use: "find notes about", "what do I know about", "/arscontexta:ask".'
---

# Ars Contexta: Ask

Query the knowledge graph. You find notes by traversing wiki-links, searching descriptions, and following MOC hierarchies.

## Query Types

### Concept Search
- Search note titles, descriptions, and body text for matching concepts
- Return ranked by relevance (title match > description match > body match)
- Include the path: the MOC chain that leads to this note

### Graph Traversal
- Start from a note, follow wiki-links outward
- Return connected notes with descriptions
- Show the traversal depth and connection type

### MOC Navigation
- Start from Hub MOC, follow domain MOCs
- Return the MOC hierarchy with note counts

### Cross-Reference
- Find notes that reference two or more specified concepts
- Return intersection of search results

## Output Format

For each result:
- Title (with path)
- Description
- Connected notes (2-3)
- Relevance indicator

## Search Depth

- Quick: Titles + descriptions only
- Normal: + body search
- Deep: + graph traversal up to 2 hops
