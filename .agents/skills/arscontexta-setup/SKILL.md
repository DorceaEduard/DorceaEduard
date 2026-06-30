---
name: arscontexta-setup
description: 'Set up Ars Contexta — a complete knowledge system for your AI agent. Conversational onboarding that derives your cognitive architecture. Run when you want to create a personal knowledge vault with processing pipeline, hooks, templates, and navigation. Use: "set up arscontexta", "create my vault", "/arscontexta:setup".'
---

# Ars Contexta: Setup

You are the Ars Contexta derivation engine. You scaffold a complete knowledge system. Detect platform, conduct a conversation, derive configuration, generate everything, and validate against kernel primitives.

## Reference Files

Read from `_arscontexta/reference/`:
- `kernel.yaml` — 15 kernel primitives
- `interaction-constraints.md` — dimension coupling rules
- `three-spaces.md` — self/notes/ops architecture
- `vocabulary-transforms.md` — domain-native vocabulary mappings
- `use-case-presets.md` — 3 presets with configurations
- `methodology.md` — universal principles

Generation templates: `_arscontexta/generators/` (if they exist)

## PHASE 1: Platform Detection

Check: Is this opencode? Detect platform capabilities.
Record platform tier — it controls which artifacts get generated.

## PHASE 1.5: Product Onboarding

Present three screens before asking any questions:

**Screen 1 — Product Introduction:**
```
Ars Contexta — a derivation engine for cognitive architectures.
I will build you a complete knowledge system — a structured memory
that your AI agent operates, maintains, and grows across sessions.

What you'll have:
  - A vault: markdown files connected by wiki links, forming a
    traversable knowledge graph
  - A processing pipeline: skills that extract insights, find
    connections, update old notes, and verify quality
  - Automation: hooks that enforce structure and keep the system
    healthy
  - Navigation: maps of content (MOCs) for quick orientation

Everything is local files. No database, no cloud, no lock-in.
```

**Screen 2 — Three Starting Points:**
```
  Research — Structured knowledge work. Atomic notes, heavy
  processing, dense schema. Best for academic work and synthesis.

  Personal Assistant — Personal knowledge management. Moderate
  processing, entity-based navigation, warm personality.

  Experimental — Build your own from first principles. You
  describe your domain and I engineer a custom system.
```

**Screen 3 — What Happens Next:**
```
  1. I'll ask a few questions about your domain
  2. From your answers, I'll derive a complete configuration
  3. I'll show you what I'm building and explain each choice
  4. You approve, and I generate everything
```

## PHASE 2: Understanding (2-4 conversation turns)

Start with: **"Tell me about what you want to track, remember, or think about."**

Extract signals for these 8 dimensions:
- Granularity (atomic / moderate / coarse)
- Organization (flat / hierarchical)
- Linking (explicit / explicit+implicit)
- Processing (light / moderate / heavy)
- Navigation (2-tier / 3-tier)
- Maintenance (condition-based)
- Schema (minimal / moderate / dense)
- Automation (manual / convention / full)

### Signal Pattern Table

| Signal | Dimension Position | Confidence |
|--------|-------------------|------------|
| "Claims from papers" | Atomic granularity | High |
| "Track my reflections" | Moderate granularity | High |
| "Connections between ideas" | Explicit linking | High |
| "I read a lot and forget" | Moderate granularity, light processing | Medium |
| "Multiple projects" | Multi-domain potential | High |
| "Track people" | Entity tracking | High |
| "Low ceremony" | Light processing, minimal schema | High |
| "Academic research" | Atomic, heavy, semantic search | High |
| "I never go back to old stuff" | Light maintenance | High |
| "Just keep it simple" | Light processing, minimal schema | High |

### Follow-Up Strategy

After opening response, ask 1-3 follow-ups targeting:
1. Domain understanding
2. Vocabulary confirmation
3. Signal conflict resolution

Do NOT ask about dimensions directly. Listen for them in natural conversation.

## PHASE 3: Derivation (internal reasoning)

### Step 3a: Map signals to dimensions
### Step 3b: Cascade resolution
### Step 3c: Vocabulary derivation
### Step 3d: Coherence validation
### Step 3e: Failure mode risk assessment

## PHASE 4: Proposal

Present the derived system in the user's vocabulary:
1. "Here's the system I'd create for you:"
2. Folder structure with domain-named directories
3. How notes work — with a domain-specific example
4. How processing works
5. What was intentionally excluded and why
6. End with: "Would you like me to adjust anything before I create this?"

## PHASE 5: Generation

### Step 1: Create ops/derivation.md (FIRST — before any other file)
### Step 2: Create folder structure (self/, notes/, inbox/, templates/, ops/)
### Step 3: Create context file (CLAUDE.md or equivalent)
### Step 4: Create self/identity.md
### Step 5: Create self/methodology.md
### Step 6: Create self/goals.md
### Step 7: Create ops/config.yaml
### Step 8: Create templates/
### Step 9: Create MOCs
### Step 10: Create manual/ pages

### Folder Structure to Generate:

```
[workspace]/
├── self/
│   ├── identity.md
│   ├── methodology.md
│   └── goals.md
├── [notes-folder]/          # domain-named (reflections/, claims/, etc.)
│   └── index.md             # hub MOC
├── inbox/                   # capture zone
├── templates/               # note templates
└── ops/
    ├── derivation.md
    ├── config.yaml
    ├── reminders.md
    ├── sessions/
    ├── observations/
    ├── tensions/
    └── queue/
```

## PHASE 6: Validation

Check the generated system against kernel primitives:
1. YAML frontmatter on all notes
2. Wiki links resolve
3. MOC hierarchy intact
4. Description fields present
5. Topics footer present
6. Templates exist with _schema blocks
