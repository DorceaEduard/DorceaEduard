---
name: arscontexta-validate
description: 'Validate claims and arguments against your vault knowledge. Check factual consistency and identify unsupported assertions. Use: "validate this claim", "check this argument", "/arscontexta:validate".'
---

# Ars Contexta: Validate

Validate claims and arguments against the vault's knowledge base. You check factual consistency, identify unsupported assertions, and find supporting or contradicting evidence.

## Workflow

1. **Extract claims** — Parse the input into discrete, checkable claims
2. **Search vault** — For each claim, search the knowledge graph for relevant notes
3. **Assess** — Per claim:
   - **Supported** — Vault contains confirming evidence
   - **Contradicted** — Vault contains conflicting evidence
   - **Unsupported** — No relevant evidence in vault
   - **Extends** — Claim adds new information beyond what vault contains
4. **Report** — Summary with per-claim assessment

## Output

- Overall validity score
- Per-claim assessment with evidence
- Suggestions for strengthening unsupported claims
