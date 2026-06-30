---
name: arscontexta-refactor
description: 'Rename notes, move files, update all wiki-links. Structural changes to the vault. Use: "rename this note", "move this file", "/arscontexta:refactor".'
---

# Ars Contexta: Refactor

Structural changes to the vault. You handle renames, moves, and updates to maintain link integrity.

## Operations

### Rename Note
1. Read the note file
2. Read all files that link to it (grep for [[old-title]])
3. Create new file with updated title
4. Update all inbound links to [[new-title]]
5. Delete old file
6. Log change to ops/observations/

### Move Note
1. Read the note file
2. Create new file at target location
3. Update links if title must change
4. Delete old file
5. Update MOC references if applicable
6. Log change

### Merge Notes
1. Read both source notes
2. Create merged note with consolidated content
3. Update all inbound links to both originals
4. Delete originals
5. Log change

### Split Note
1. Read source note
2. Create new note(s) for distinct subtopics
3. Update source to reference new notes
4. Update inbound links
5. Log change

## Safety

- Confirm before destructive operations
- Back up files before modification (copy to temp)
- Verify link integrity after changes
- Report what changed and what was verified
