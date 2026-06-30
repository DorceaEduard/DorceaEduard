# Conversation Patterns Reference

Worked examples of derivation conversations. Each demonstrates signal extraction → configuration → vocabulary mapping.

## Pattern 1: Book Notes / Research

**User says:** "I read a lot of non-fiction and want to track the key ideas and how they connect."

**Signals extracted:**
- Read a lot → high capture volume → processing needed
- Track key ideas → atomic granularity
- How they connect → explicit linking, graph structure
- Non-fiction → structured knowledge, claims-based

**Derived config:** Research preset. Atomic, flat, explicit+implicit linking, heavy processing, 3-tier nav, condition-based maintenance, moderate schema, convention automation.

**Vocabulary:** claims/ for notes, reduce, reflect, topic map for MOCs.
**Extraction categories:** claims, evidence, methodology-comparisons, contradictions.

## Pattern 2: Personal Journal / Therapy

**User says:** "I'm in therapy and want to track patterns in my feelings and relationships."

**Signals extracted:**
- Track patterns → moderate granularity, processing
- Feelings and relationships → entity-based, emotionally attentive
- Therapy → sensitive content handling, warm-clinical hybrid

**Derived config:** Custom. Moderate, flat, explicit linking, moderate processing, 2-tier nav, condition-based maintenance, moderate schema, convention automation.

**Vocabulary:** reflections/, surface, find patterns, life area.
**Extraction categories:** reflections, relationships, goals, habits, triggers.

## Pattern 3: Multi-Project PM

**User says:** "I run multiple projects and need to track decisions, blockers, and lessons learned."

**Signals extracted:**
- Multiple projects → domain organization needed
- Track decisions → claim-like atomic items
- Blockers → temporal state tracking
- Lessons learned → processing pipeline
- PM language → GTD-influenced, action-oriented

**Derived config:** Mixed. Moderate granularity, flat+project MOCs, explicit linking, moderate processing, 2-tier nav, tight condition-based maintenance, dense schema (decision/blocker/lesson status fields), convention automation.

## Pattern 4: Climate Adaptation Research

**User says:** "I'm researching climate adaptation strategies across different regions."

**Signals extracted:**
- Research → atomic, heavy processing
- Across different regions → cross-domain categorization
- Strategies → comparative analysis

**Derived config:** Research. Atomic, flat, explicit+implicit, heavy, 3-tier, tight maintenance, moderate schema, convention.

## Pattern 5: Family/Friends Memory

**User says:** "I want to remember important things about people in my life."

**Signals extracted:**
- People → entity tracking
- Important things → moderate granularity (per-person)
- Memory → light processing, retrieval-focused

**Derived config:** Custom. Moderate, flat, explicit, light, 2-tier, lax maintenance, moderate schema, convention.

**Vocabulary:** people/, "update about [person]", social map.
**Extraction categories:** preferences, events, conversations, gifts, health.

## Follow-Up Question Patterns

| After user says... | Ask... |
|---|---|
| (domain description) | "What kind of things do you want to extract from your reading?" |
| "I want to track X" | "How detailed should each entry be — a paragraph or a full page?" |
| "I read a lot" | "What's your typical reading volume — a few articles, books, papers?" |
| "Connect ideas" | "Do you prefer finding connections at capture time or in dedicated sessions?" |
| "Keep it simple" | "What's the minimum you'd want to know when looking at an old note?" |
