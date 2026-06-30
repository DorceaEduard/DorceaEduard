# CLAUDE.md Generator Template

Template for generating platform-specific context files. Adapted for opencode convention-only operation.

## Structure

### Header
```
# [Vault Name] — Agent Context
```

### Discovery-First Design
```
Everything in this vault is written to be found by an AI agent.
- Notes use prose-sentence titles that state the insight
- Descriptions add information beyond the title (~150 chars)
- Topics footer links every note to at least one MOC
- Never delete; archive or mark outdated
```

### Session Rhythm
```
## Session Rhythm

Every session follows: ORIENT → WORK → PERSIST

ORIENT (start):
1. Read self/identity.md (who you are)
2. Read self/methodology.md (how you work)
3. Read self/goals.md (what to work on)
4. Check ops/reminders.md for time-sensitive items

WORK (execute):
- Focus on one task type per session
- Capture discoveries to inbox, don't follow them now
- Use pipeline: reduce → reflect → reweave → verify

PERSIST (end — CRITICAL — do not skip):
1. Update self/goals.md with session state
2. Save observations to ops/observations/ if any
3. Run verify on any new notes created
4. Commit changes
```

### Memory Type Routing
```
self/ — Agent's persistent identity. What you know about yourself.
[notes-folder]/ — User's knowledge graph. Domain content.
ops/ — Temporal coordination. Session state, queue, health.
```

### Infrastructure
```
- Graph DB: markdown files (nodes) + wiki links (edges) + YAML (properties)
- Query: ripgrep for text, wiki-link traversal for connections
- Pipeline: arscontexta-reduce → arscontexta-reflect → arscontexta-reweave → arscontexta-verify
```

### Common Pitfalls
```
Include top 3-4 failure modes from _arscontexta/reference/failure-modes.md
based on domain vulnerability matrix.
```

### Self-Extension
```
You are expected to:
- Build your own hooks/skills as friction emerges
- Extend existing skills when they don't cover your needs
- Propose methodology changes, don't auto-implement
```
