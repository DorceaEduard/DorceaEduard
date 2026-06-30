# Derivation Validation Reference

Test cases for validating the derivation engine produces coherent, constraint-satisfying configurations.

## Test 1: Self-Derivation (Research Vault)

The engine must derive its own configuration — a Research vault.

**Expected:** atomic, flat, explicit+implicit, heavy processing, 3-tier, condition-based maintenance, moderate schema, convention automation. No self space. Vocabulary: notes/reduce/reflect.

## Test 2: Cross-Domain (Therapy)

User: "Tracking patterns in my therapy journey"

**Signals:** personal content, pattern detection, longitudinal, sensitive
**Expected:** moderate granularity, flat, explicit, moderate processing, 2-tier nav, tight maintenance, moderate schema. Self space ON. Warm personality.
**Vocabulary:** reflections/, surface, life area.

## Test 3: Novel Domain (Competitive Gaming)

User: "I want to track fighting game strategies and character matchups"

**Signals:** rapidly changing meta, tactical detail, comparative analysis
**Expected:** atomic granularity, flat + domain MOCs, explicit linking, moderate processing, 2-tier nav, tight maintenance (meta shifts fast), moderate schema (character/technique category enums). Convention automation. Self space OFF.
**Vocabulary:** tech/ (techniques), matchups/, reduce.

## Test 4: Minimal Platform (Convention-Only)

Configuration must work with only convention-level automation (no hooks, no MCP).

**All configs must include:** context file instructions for session rhythm, self/ loading, pipeline execution. No hook references. Session-end checklist with CRITICAL framing.

## Test 5: Interaction Constraint Violation

Ensure atomic + 2-tier nav + volume > 100 fires the navigational vertigo warning.

## Test 6: Vocabulary Transformation Fidelity

Research → claims, notes/ → claims/, MOC → topic map.
Personal → reflections, notes/ → reflections/, MOC → life area.

Ensure 6 transformation levels applied consistently:
1. Folder names
2. Note types
3. Schema field names
4. Process verbs
5. Navigation terms
6. UI labels

## Validation Summary

| Test | Check |
|---|---|
| Self-derivation | Coherent, constraint-satisfying config |
| Cross-domain | Correct preset selection, vocabulary transform |
| Novel domain | Correct signal extraction, custom config |
| Minimal platform | No hook references, checklist present |
| Constraints | Fires warnings for known violations |
| Vocabulary | All 6 levels transformed consistently |
