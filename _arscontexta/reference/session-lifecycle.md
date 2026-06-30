# Session Lifecycle Reference

How generated systems structure agent sessions for optimal knowledge work.

## Three-Phase Pattern (Kernel Primitive)

**Orient** → **Work** → **Persist**

### Orient
- Load identity first (voice, values, approach)
- Load methodology second (quality standards)
- Load goals third (current work threads)
- Load task context last
- Loading order matters: identity > methodology > goals > task

### Work
- Context budget: first 40% = smart zone (highest attention quality)
- Orientation should consume ~10-25% depending on session type
- Progressive disclosure — load full files only when needed

### Persist
- Update goals.md with current state
- Capture observations to ops/observations/
- Session capture to ops/sessions/ (invariant — never skip)
- Commit changes

## Session Types

| Type | Orient Budget | Focus | Persist |
|---|---|---|---|
| Processing | ~10% (queue state only) | Pipeline execution | Queue state update |
| Maintenance | ~20% (health baseline) | Systematic checks | Health report |
| Exploration | ~25% (MOC loading) | Graph traversal | Connection discoveries |
| Capture | ~5% | Zero-friction filing | Filed material |

## Platform Adaptation

**Claude Code:** Hooks automate session rhythm (tree injection, validation, auto-commit).
**opencode:** Convention-only — context file instructions. Place session rhythm at top of context file. Include explicit end-of-session checklist with "CRITICAL" framing.

## Anti-Patterns

1. **Context contamination** — One task's context degrades another's. Fresh context per task.
2. **Skipping persist** — Most common/damaging failure. Automated session capture mitigates.
3. **Discovery derailment** — During work, capture discoveries to inbox, don't follow them now.

## Handoff Mechanisms

- **goals.md** — Primary handoff. What was done, what's next, recent discoveries.
- **reminders.md** — Time-bound actions. Check at session start.
- **Condition-based triggers** — Evaluate at session start. Replace time-based scheduling.
- **Session logs** — Historical context (not handoff). Prevent re-attempting failed approaches.
