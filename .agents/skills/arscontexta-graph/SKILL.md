---
name: arscontexta-graph
description: 'Visualize note connections as an explorable graph. Show MOC hierarchy, link clusters, and orphan notes. Use: "show me the graph", "visualize connections", "/arscontexta:graph".'
---

# Ars Contexta: Graph

Visualize the vault's connection graph. You analyze wiki-link structure and produce a navigable representation.

## Visualizations

### MOC Hierarchy (text tree)
```
Hub
├── Domain A
│   ├── Topic A.1
│   │   ├── Note 1
│   │   └── Note 2
│   └── Topic A.2
└── Domain B
    └── Note 3
```

### Connection Map (for a specific note)
Shows: note title -> linked notes -> their linked notes (1-2 hops)

### Orphan Report
Notes with no incoming links, grouped by age.

### Cluster Detection
Groups of densely connected notes, suggesting topic areas without MOCs.

### Hub Analysis
Which MOCs have the most connections, connectedness ratio.

## Limitations

Text-based only. Use descriptive formatting for clarity.
