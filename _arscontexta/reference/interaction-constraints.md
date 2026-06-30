# Interaction Constraints Reference

## Hard Constraints (will produce failing systems)

1. atomic + navigation_depth == "2-tier" + volume > 100 -> navigational vertigo
2. automation == "full" + no_platform_support -> platform cannot support
3. processing == "heavy" + automation == "manual" + no_pipeline_skills -> unsustainable

## Soft Constraints (create friction, have compensations)

1. atomic + processing == "light" -> atomic needs processing to recreate context
2. schema == "dense" + automation == "convention" -> maintenance burden
3. linking == "explicit+implicit" + no_semantic_search -> implicit needs search
4. volume > 200 + lax maintenance -> maintenance debt
5. processing == "heavy" + lax maintenance -> targets accumulate faster than thresholds
6. coarse + processing == "heavy" -> diminishing returns
7. flat + navigation_depth == "2-tier" + volume > 50 -> crowded navigation

## Cascade Effects

- Atomic granularity -> pressure toward explicit linking, deep navigation, heavy processing
- Full automation -> pressure toward dense schemas, heavy processing, frequent maintenance
- High volume (>200) -> requires deep navigation, semantic search, automated maintenance
- Coarse granularity -> permits lightweight linking, shallow navigation, light processing

## Compensating Mechanisms

- Atomic + medium processing -> semantic search compensates for missing links
- Dense schema + convention -> good templates reduce manual validation
- High volume + shallow nav -> strong semantic search enables discovery
