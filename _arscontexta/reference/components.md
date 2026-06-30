# Knowledge System Components

Blueprints for each system component.

## Notes
Atomic knowledge units. Prose-as-title claim + YAML frontmatter + body + wiki-links + topics footer.

## Schema
Structured metadata via YAML frontmatter. Template-defined fields. Minimal viable schema.

## Links
Graph edges via wiki-links `[[note title]]`. Bidirectional by convention. Filename-unique resolution.

## Navigation (MOCs)
Maps of Content as attention management. Hub → Domain → Topic → Notes. Created at 20+ notes threshold.

## Folders
self/ (agent identity), [notes-folder]/ (knowledge graph), inbox/ (capture zone), templates/, ops/ (operations).

## Templates
Reusable YAML structure with _schema blocks for field definitions.

## Hooks
Event-driven automation (opencode: not natively supported, use skills instead).

## Search
- ripgrep for text search
- wiki-link graph traversal
- Semantic search (configurable)
- Progressive disclosure via descriptions

## Health
Maintenance operations: description check, schema validation, link resolution, orphan detection, MOC integrity.

## Pipeline
Processing chain: reduce → reflect → reweave → verify. Condition-based execution.

## Task Stack
Lifecycle backbone. ops/tasks.md human-readable view. queue/ for pipeline state.

## Methodology Folder
ops/methodology/ — vault self-knowledge. Derivation rationale, configuration, evolution.

## Session Capture
Automatic transcript preservation to ops/sessions/. Feeds operational learning loop.

## Self Space
Agent's persistent mind. identity.md, methodology.md, goals.md, optionally memory/ and relationships.md.
