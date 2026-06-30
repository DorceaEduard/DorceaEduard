# AGENTS.md — SecondBrain (Ars Contexta)

**Proiect practica S4 2026** — SecondBrain local pentru Automatică și Informatică Aplicată Anul III.
Sistem de cunoștințe care ingerează PDF-uri de curs și răspunde la întrebări cu citare sursă.

## Philosophy

**If it won't exist next session, write it down now.**

Conceptele sunt memoria ta externă. Wiki-linkurile sunt conexiunile. Hărțile-materie sunt managerii de atenție. Fără acest sistem, fiecare sesiune începe de la zero.

## Discovery-First Design

Înainte de a scrie în `concepts/`, verifică:
1. **Titlu ca propoziție** — Se citește natural: `since [[titlu]]`?
2. **Descriere utilă** — Adaugă informații dincolo de titlu?
3. **Materii** — E linkuit de la cel puțin o [[hartă-materie]]?
4. **Compozabilitate** — Poate fi linkuit din alte concepte fără context irelevant?

## Schema unei notițe

```yaml
descriere: "ce afirmă conceptul"
materii: ["[[nume-materie]]"]
type: definition | theorem | formula | algorithm | example
source: "nume_PDF.pdf"
confidence: established | supported | speculative
```

## Session Rhythm

**Orient** → citește `self/goals.md`, `ops/reminders.md`, verifică starea vault-ului
**Work** → procesează PDF-uri, extrage concepte, conectează materii
**Persist** → commit, actualizează goal-uri, capturează observații

## Where Things Go

| Content | Destinație |
|---------|-----------|
| Concepte din curs | concepts/ |
| PDF-uri de procesat | inbox/ |
| Obiective proiect | self/goals.md |
| Task-uri urgente | ops/reminders.md |

## Available Commands

- **/arscontexta:help** — Comenzi disponibile
- **/arscontexta:health [quick|full]** — Diagnostic vault
- **/arscontexta:ask [întrebare]** — Interoghează baza de cunoștințe metodologică
- **/arscontexta:extrage [sursă]** — Extrage concepte dintr-un PDF din inbox/
- **/arscontexta:conectează** — Găsește conexiuni între concepte
- **/arscontexta:verifică [concept]** — Verifică calitatea unei notițe
- **/arscontexta:next** — Ce să faci mai departe
- **/arscontexta:remember** — Capturează un obstacol/observație
- **/arscontexta:stats** — Statistici vault

## Condition-Based Maintenance

| Condiție | Prag | Acțiune |
|----------|------|---------|
| Concepte orfane >7 zile | Any | Rulează /conectează |
| Inbox items | >= 3 | Rulează /extrage |
| Observații nerezolvate | >= 5 | Rulează /rethink |

## Pipeline Compliance

PDF-urile intră în `inbox/`, trec prin `/extrage` → concepte în `concepts/`, apoi se arhivează în `archive/`.

## Metodologie

Vezi `.opencode/arscontexta/methodology/` (249 research claims) și `.opencode/arscontexta/reference/`.
