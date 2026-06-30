---
name: jira
description: Lucreaza cu Jira din terminal pentru proiectul practicii (board BRAIN (echipa 2 SecondBrain)). Foloseste cand utilizatorul vrea sa vada ce are de facut, sa-si miste tichetele de status, sa adauge comentarii sau sa-si logheze orele lucrate. Triggers pe "ce am de facut", "jira", "muta ticketul", "logheaza ore", "trece pe done", "comenteaza pe ticket".
---

# Jira — board-ul practicii (din terminal)

Acest skill iti lasa agentul sa lucreze direct cu Jira fara sa deschizi browserul. Tot ce faci la practica trebuie sa fie pe Jira: ce ai de facut, pe ce lucrezi acum, cat timp ai pus si ce ai terminat. Regula: **ce nu-i pe Jira nu exista.**

Skill-ul cheama scriptul `jira.py` din folderul lui. Scriptul vorbeste cu Jira REST API v3 prin basic auth (email + token), folosind doar `requests`.

## Setup (o singura data)

1. **Fa-ti cheia API** pe https://id.atlassian.com/manage-profile/security/api-tokens
   - **Create API token** (NU "Create API token with scopes" — aia da 401).
   - Logat cu contul cu care ai primit invitatia pe Jira.
   - Copiaza tokenul (`ATATT...`) — il vezi o singura data.

2. **Pune credentialele intr-un `.env`** in radacina proiectului (acelasi `.env` ca pentru opencode/NVIDIA):
   ```
   JIRA_URL=https://practica-devidevs-utcb-grupa-b.atlassian.net
   JIRA_EMAIL=emailul_tau@gmail.com
   JIRA_TOKEN=ATATT...cheia_ta
   JIRA_PROJECT=BRAIN
   ```
   ⚠️ `.env` TREBUIE sa fie in `.gitignore`. Daca tokenul ajunge pe git (si de acolo pe Vercel), oricine iti foloseste contul.

3. **Testeaza:** `python jira.py mine` — daca vezi tichetele tale, merge.

## Comenzi

Ruleaza din folderul unde e `jira.py` (sau da calea completa):

| Comanda | Ce face |
|---------|---------|
| `python jira.py mine` | Tichetele asignate tie, care nu-s Done — "ce am de facut" |
| `python jira.py list` | Toate tichetele de pe board |
| `python jira.py get BRAIN-5` | Detaliile unui ticket (status, assignee) |
| `python jira.py create "Sumar"` | Creeaza un ticket nou |
| `python jira.py move BRAIN-5 "In Progress"` | Muta statusul: To Do / In Progress / In Review / Done |
| `python jira.py comment BRAIN-5 "Am facut X"` | Adauga un comentariu |
| `python jira.py log BRAIN-5 2h "Ce am facut"` | Logheaza timp lucrat (ex: 2h, 90m, 1d 2h) |

## Cum il folosesti zilnic (workflow)

La inceputul sesiunii de lucru:
- "Ce am de facut?" → agentul ruleaza `python jira.py mine`
- Te apuci de tichetul tau → `python jira.py move BRAIN-X "In Progress"`

In timpul lucrului:
- Cand ai facut o bucata → `python jira.py comment BRAIN-X "Am terminat scheletul paginii"`

La final de sesiune (OBLIGATORIU):
- Logheaza orele → `python jira.py log BRAIN-X 3h "Layout + prima sectiune"`
- Daca ai terminat → `python jira.py move BRAIN-X "Done"`

> Nu trebuie sa retii comenzile pe de rost. Spune-i agentului in cuvinte: "muta ticketul meu pe in progress", "logheaza-mi 2 ore pe ce am lucrat azi", "ce am de facut azi pe jira" — el stie sa cheme skill-ul asta.

## Daca pica

- **401 Unauthorized** → token "with scopes" in loc de clasic, SAU email gresit in `.env`, SAU `JIRA_URL` cu alta grupa. Regenereaza tokenul clasic.
- **issuetype "Task" da eroare** → pe board-ul vostru tipul se poate numi altfel. Cere agentului sa listeze tipurile: `GET /rest/api/3/issue/createmeta`.
- **status indisponibil** → scriptul iti arata statusurile valide. Foloseste-l pe cel exact (ex: "In Progress", nu "in progres").
