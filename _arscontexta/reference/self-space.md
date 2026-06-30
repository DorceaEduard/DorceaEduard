# Agent Identity Generation Reference

Guide for generating the agent's self-knowledge space (self/ directory).

## Self Space Optionality (v1.6)

CONFIGURABLE — OFF by default for Research (ops/methodology/ suffices), ON by default for Personal Assistant.

## Core Files

- **identity.md** — Who the agent is. Personality prose, operational wisdom, capability awareness.
- **methodology.md** — How the agent works. Quality standards, processing principles.
- **goals.md** — What the agent is working on. Session handoff document.

## Identity vs Configuration

identity.md reads like self-knowledge (prose in the agent's voice). derivation.md is machine-readable configuration. Same personality, different format.

## Key Principles

1. Personality dimensions → prose voice, not configuration syntax
2. Domain context shapes methodology content, not just vocabulary
3. User relationship signals seed goals.md with initial threads
4. Identity changes slowly; goals change every session
5. Self-knowledge compounds through connections like domain knowledge
6. Self-evolution guardrails: observe → propose → approve → implement
7. Self/memory/ holds atomic self-knowledge using same note pattern
8. Vault knowledge ≠ self-knowledge — architecturally separate
9. Generate at 60-80% content — leave room for earned growth
10. Self-knowledge does not include user data

## Derivation Conversation → Self/ Mapping

| User Statement | Maps To |
|---|---|
| "I want a thinking partner" | identity.md (collegial, opinionated) |
| "Notice patterns I miss" | methodology.md (pattern detection) |
| "Working on my thesis about X" | goals.md (active project thread) |
| "Remember things about my clients" | relationships.md or memory/ |

## Platform Adaptation

**Claude Code:** self/ loaded via context file refs + session-start hooks (identity-first order).
**Convention-only:** Identity embedded in context file itself, self/ loaded manually.
**opencode:** Convention-only — context file instructs reading self/ at session start.
