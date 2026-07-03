---
name: jira
description: 'Jira API integration. List, create, update, and search Jira issues directly from CLI. Manage project tickets and link vault notes to Jira tasks. Use when user mentions "jira", "ticket", "issue", "task in jira", "sincronizează jira".'
allowed-tools: Read, Write, Grep, Bash
---

# Jira API Integration

## Configuration

Set environment variables or create `.jira/config.json` in the vault root:

| Variabila | Descriere |
|-----------|-----------|
| `JIRA_BASE_URL` | URL instanță Jira (ex: `https://your-domain.atlassian.net`) |
| `JIRA_EMAIL` | Email cont Atlassian |
| `JIRA_API_TOKEN` | API token (https://id.atlassian.com/manage/api-tokens) |
| `JIRA_PROJECT` | Project key implicit (ex: `PROIECT`) |

**Fișier config:** `.jira/config.json` (se generează cu `/jira:setup`)

## Available Commands

- **/jira:setup** — Configurează conexiunea Jira (ghid pas-cu-pas)
- **/jira:list [project]** — Listează issue-uri dintr-un proiect (default: `JIRA_PROJECT`)
- **/jira:search [query]** — Caută issue-uri JQL
- **/jira:get [ISSUE-123]** — Vezi detalii issue
- **/jira:create [summary]** — Creează issue nou (întreabă type, description, assignee)
- **/jira:update [ISSUE-123]** — Actualizează status/assignee/description
- **/jira:link [ISSUE-123]** — Leagă notița curentă din vault de un issue Jira
- **/jira:sync** — Compară issue-urile Jira cu task-urile din `ops/queue/`

## Working with Vault

După ce un concept e extras din PDF și notița e creată, poți lega issue-ul Jira corespunzător:

1. `/jira:create "Extrage concepte din cursul X"` — creează issue
2. `/jira:link PROIECT-42` — leagă notița curentă de issue
3. Linkul se salvează în YAML frontmatter: `jira: ["PROIECT-42"]`

## Authentication

Autentificarea Jira se face prin **Basic Auth** (email + API token) via REST API:

```
GET {JIRA_BASE_URL}/rest/api/3/search
Authorization: Basic {base64(email:token)}
Content-Type: application/json
```

## Helper Script

Folosește `.agents/skills/jira/jira.ps1` pentru operații comune:

```powershell
# List issues
& ".agents/skills/jira/jira.ps1" list -project PROIECT

# Get issue details
& ".agents/skills/jira/jira.ps1" get ISSUE-123

# Create issue
& ".agents/skills/jira/jira.ps1" create -project PROIECT -summary "Task title" -type Task

# Search
& ".agents/skills/jira/jira.ps1" search -jql "project = PROIECT AND status != Done"
```
