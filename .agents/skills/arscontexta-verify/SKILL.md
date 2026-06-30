---
name: arscontexta-verify
description: 'Validate vault health: description quality, schema compliance, link resolution. Combined verification gate. Run after processing or periodically. Use: "verify vault", "check quality", "/arscontexta:verify".'
---

# Ars Contexta: Verify

Combined verification of the vault against kernel primitives. Runs three checks: description quality, schema compliance, and link resolution.

## Workflow

1. **Gather** — Read all [notes-folder]/ files (not self/ or ops/)
2. **Check 1: Description Quality**
   - Every note has a `description` field
   - Description differs from title (not just "A note about X")
   - Description is ~150 characters (not empty, not a novel)
   - Report: pass/fail with list of failures
3. **Check 2: Schema Compliance**
   - Valid YAML frontmatter (--- delimited)
   - Required fields present per note type
   - Field values match expected enums
   - Report: pass/fail with list of failures
4. **Check 3: Link Resolution**
   - Extract all [[wiki-links]]
   - Verify each resolves to an existing file
   - Report: resolution percentage, broken links list
5. **Check 4: Orphan Detection**
   - Notes not linked from any MOC
   - Notes with zero incoming links
   - Report: orphan count and list
6. **Summary** — Overall health score, critical issues, recommendations

## Output

Write report to ops/health/latest.md with:
- Timestamp
- Per-check results
- Overall assessment (healthy / needs-attention / critical)
- Action items for next session

## Verification Scope

- Default: [notes-folder]/ only
- Full: [notes-folder]/ + self/ + ops/
- Quick: Just description quality and link resolution
