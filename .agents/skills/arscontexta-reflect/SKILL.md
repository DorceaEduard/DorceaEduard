---
name: arscontexta-reflect
description: 'Find connections between notes. Update Maps of Content and add cross-links. Run after reduce or periodically. Use: "reflect on new notes", "find connections", "/arscontexta:reflect".'
---

# Ars Contexta: Reflect

Discover and materialize connections between notes. You read new notes from the queue and find where they fit in the existing knowledge graph.

## Workflow

1. Read queue items from ops/queue/
2. For each queued note:
   a. Read the note content
   b. Read existing notes in the same domain area
   c. Search for semantic connections (shared concepts, contrasting claims, complementary evidence)
3. For each connection found:
   a. Add wiki-links in the new note
   b. Optionally add backlinks in the existing note (if the connection is significant)
4. If a note connects multiple domains, add or expand domain MOCs
5. Remove processed items from queue

## Connection Types

- **Direct** — Same concept, different facet: add bidirectional links
- **Contrast** — Competing claims: add links with contextual note in body
- **Complement** — Supports or extends: add link
- **Hierarchical** — General-specific relationship: add to relevant MOC
- **Cross-domain** — Unexpected bridge: add to both MOCs, flag for synthesis

## MOC Updating

If a note belongs to a domain without an MOC:
1. Check if it should be added to an existing MOC
2. If new domain is discovered, create a new MOC
3. Ensure every note appears in at least one MOC

## Quality

- Each processed note gains at least 1 new connection
- No false connections (must be semantically genuine)
- MOCs remain navigable (not overloaded)
- Queue reaches zero or has clear backlog
