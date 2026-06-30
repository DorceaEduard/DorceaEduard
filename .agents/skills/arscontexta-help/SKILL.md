---
name: arscontexta-help
description: 'Contextual guidance and command discovery for the Ars Contexta system. Use when you need to know what skills are available or how to use the vault. Use: "help", "what can you do", "/arscontexta:help".'
---

# Ars Contexta: Help

Provide contextual guidance about the Ars Contexta knowledge system. Dynamically determine what the user needs help with and return the appropriate information.

## Help Topics

- **Overview** — What is Ars Contexta? Three-space architecture, core philosophy
- **Skills Index** — List of all available arscontexta-* skills
- **Setup** — How to create or reconfigure a vault
- **Processing** — How the reduce -> reflect -> reweave -> verify pipeline works
- **Navigation** — How MOCs work, finding notes
- **Maintenance** — Health checks, orphan management
- **Concepts** — Kernel primitives, three spaces, vocabulary transforms

## Skill Index

Available skills and their trigger phrases:

| Skill | Triggers | Description |
|-------|----------|-------------|
| arscontexta-setup | "set up vault", "/ac:setup" | Create new knowledge system |
| arscontexta-reduce | "extract notes", "/ac:reduce" | Extract knowledge from sources |
| arscontexta-reflect | "find connections", "/ac:reflect" | Connect notes and update MOCs |
| arscontexta-reweave | "update old notes", "/ac:reweave" | Backward maintenance pass |
| arscontexta-verify | "check quality", "/ac:verify" | Validate vault against standards |
| arscontexta-health | "check health", "/ac:health" | Full vault diagnostics |
| arscontexta-ask | "find notes about", "/ac:ask" | Query the knowledge graph |
| arscontexta-remember | "save this learning", "/ac:remember" | Capture session insights |
| arscontexta-rethink | "challenge my thinking", "/ac:rethink" | Adversarial review |
| arscontexta-validate | "check this argument", "/ac:validate" | Validate claims against vault |
| arscontexta-seed | "suggest a note", "/ac:seed" | Suggest next notes to write |
| arscontexta-ralph | "summarize", "/ac:ralph" | Domain-aware summarizer |
| arscontexta-pipeline | "run pipeline", "/ac:pipeline" | Run full processing chain |
| arscontexta-next | "what should I do", "/ac:next" | Suggest next actions |
| arscontexta-stats | "vault statistics", "/ac:stats" | Vault metrics |
| arscontexta-graph | "show graph", "/ac:graph" | Visualize note connections |
| arscontexta-learn | "learn from friction", "/ac:learn" | Review friction signals |
| arscontexta-refactor | "rename note", "/ac:refactor" | Structural changes |
