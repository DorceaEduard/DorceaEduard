---
type: derivation
created: 2026-06-30
status: active
---

# Derivation — Knowledge Vault

## Platform
- Platform: opencode (convention-only)
- No hooks, no MCP, no plugin system
- Automation via skills (.agents/skills/arscontexta-*)

## User Signals
- Academic course PDFs as source material
- AI extraction of key concepts from PDFs
- Organization by course/subject
- 5-20 courses (moderate volume)

## Derived Configuration

| Dimension | Value | Rationale |
|---|---|---|
| Granularity | atomic | One concept per note for composability and linking |
| Organization | flat + MOCs | Hierarchy via course MOCs, not folder nesting |
| Linking | explicit | Wiki-links between related concepts |
| Processing | heavy | Full pipeline: extract → connect → update → verify |
| Navigation | 2-tier | Hub MOC → Course MOC → Notes |
| Maintenance | condition-based | Verify after each processing batch |
| Schema | moderate | source, course, type fields |
| Automation | convention | opencode skills, no hooks |
| Self space | OFF | Research default — ops/methodology/ instead |

## Vocabulary
- Notes folder: `cursuri/`
- Reduce → "extra" (extract concepts from PDF)
- Reflect → "conectează" (find connections)
- MOC → course maps (one per course)
- Note types: concept, definitie, teorema, exemplu, observatie

## Failure Mode Warnings
1. **Collector's Fallacy** — PDF-uri în inbox fără procesare
2. **Orphan Drift** — Concepte neconectate la MOC-ul cursului
3. **Verbatim Risk** — Copiere din PDF în loc de reformulare
4. **Productivity Porn** — Construit sistemul în loc de procesat cursuri

## Generated
- 2026-06-30: Initial scaffold via arscontexta-setup
