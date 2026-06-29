---
title: "SecondBrain — SaaS Agentic RAG pentru Studenți"
status: draft
created: 2026-06-29
updated: 2026-06-29
---

# Product Brief: SecondBrain

## Executive Summary

SecondBrain este un SaaS agentic RAG care transformă orice material de curs (PDF, video, audio, prezentări) într-un second brain pe care studentul îl poate întreba în limbaj natural și primește răspunsuri sintetizate, pe înțelesul lui, ancorate în ce a predat profesorul. În loc să tot comuți între PDF-uri, YouTube, ChatGPT și notițe de mână, studenții au un singur loc unde tot materialul e indexat, transcris și interogabil — cu două vaulturi: unul personal și unul construit de comunitatea facultății.

Produsul e construit de 3 studenți drept proiect de practică de vară (3 săptămâni × ~90h). El este gândit să fie viabil ca MVP la finalul practicii și extensibil ulterior.

## The Problem

Un student de Automatică anul III primește sute de pagini de curs în PDF, înregistrări video de 2 ore, prezentări, și notițe disparate. Volumul e copleșitor: e greu de spus ce e important, ce e valoros pentru examen, ce merită reținut. Limbajul academic e deseori greu de digerat.

Ca să înțeleagă un concept, studentul:

1. Citește PDF-ul de curs — limbaj dens, multe pagini.
2. Dacă nu înțelege, caută pe YouTube un clip — care poate explica prin metode ce nu se pot cu ce a predat profesorul.
3. Sau întreabă ChatGPT — la fel, răspunsul e generic, nu e aliniat la curs.
4. Mai întreabă colegi mai mari sau profesorul — semnal uman, deci lent și nescalabil.

Rezultatul: timp pierdut comutând între surse, informație inconsistentă, răspunsuri care nu sunt ancorate în materia specifică a cursului.

## The Solution

SecondBrain este o aplicație web unde studentul:

- Se autentifică și vede două vaulturi de cunoștințe: **shared** (cu materiale puse de toți studenții, moderate de un admin) și **personal** (documentele încărcate doar de el).
- Încarcă orice material: PDF, înregistrare video curs, clip YouTube, prezentare, document — sistemul **transcrie automat totul în markdown** și indexează.
- Intră într-un **chat agentic** unde pune întrebări în limbaj natural. Agentul RAG caută în vaultul/vaulturile selectate și răspunde sintetizat, pe înțeles, cu trimitere exactă la sursa originală.

Spre deosebire de ChatGPT generic, răspunsurile sunt 100% ancorate în materialele cursului — nu există halucinații cu metode din alte școli. Mecanism: ARS Contexta + RAG cu surse obligatorii, cu LLM Nvidia + pgvector pentru indexare.

## What Makes This Different

| Criteriu | ChatGPT / YouTube | SecondBrain |
|----------|-------------------|-------------|
| **Ancorare** | Explicații generale, nu specifice cursului | Răspunsuri doar din materialele încărcate (curs, predare) |
| **Sinteză** | Trebuie să-ți dai seama singur ce e relevant | Agentul sintetizează și scoate esențialul |
| **Context** | Fără memorie a vaultului personal | Două vaulturi: personal + shared (comunitatea facultății) |
| **Format surse** | Doar text sau link-uri izolate | PDF + video + audio + prezentări → totul transcris în markdown și interogabil |

[ASSUMPTION: Diferențiatorii de mai sus vor fi validați vs. soluții existente (Notion AI, Google NotebookLM, Obsidian Copilot) — concurența nu a fost analizată formal.]

## Who This Serves

**Utilizatori primari:** studenții de la Automatică și Informatică Aplicată, Facultatea de Automatică. ~60 de studenți/an doar în anul III. [ASSUMPTION: Se presupune că soluția e atractivă și pentru ceilalți ani și alte facultăți similare, dar focusul MVP e pe anul III AIA.]

**Utilizatori secundari:** admini (profesori sau responsabili de practică) care validează conținutul din vault-ul shared — dar admin dashboard-ul e amânat pentru v2.

**Cine nu e utilizator țintă (momentan):** studenți care nu au nevoie de agregare multi-sursă, sau care preferă să învețe doar din notițe proprii.

## Success Criteria

Pentru finalul practicii (3 săptămâni):

1. **Utilizatorul poate încărca un PDF de 100 de pagini și un video de 30 min — ambele sunt transcrise și indexate.**
2. **Agentul răspunde corect la 3 întrebări pe baza acestor documente, cu citarea sursei exacte.**
3. **Flow-ul complet (login → upload → chat) funcționează end-to-end.**
4. **Demo-ul e prezentabil la practică în fața profesorilor.**
5. [ASSUMPTION: Nu există criterii cantitative de succes (ex. acuratețe RAG > 90%) stabilite — se recomandă definirea lor în sprint.]

## Scope

**În v1 (MVP — 3 săptămâni):**

| Component | Status |
|-----------|--------|
| Autentificare (Supabase Auth) | ✓ inclus |
| Upload documente (PDF, video, audio) | ✓ inclus |
| Transcriere automată → markdown | ✓ inclus |
| Indexare RAG | ✓ inclus |
| Chat agentic cu vault personal | ✓ inclus |
| Vault shared (comunitate) | ✓ inclus |
| Acces vault shared + personal simultan | ✓ inclus |
| UI web (pagina de login + chat + upload) | ✓ inclus |
| ARS Contexta integrare | ✓ inclus |
| Deploy (Vercel + Render + Supabase + Resend) | ✓ inclus |
| Transcriere audio/video: Whisper (local) | ✓ inclus |
| LLM: Nvidia | ✓ inclus |
| Supabase Auth, Database, Storage, pgvector | ✓ inclus |

**În v2 (după practică):**
- Admin dashboard (aprobare/respingere conținut shared)
- Moderare și raportare conținut shared
- Sistem de credibilitate pentru vault-ul shared
- Flashcards și autoevaluare generate automat
- Plan de recuperare agentic pentru studenți absenți
- Vizualizare graf de cunoștințe
- Mobile app

**Explicit exclus din v1:**
- Admin approve/reject flow pentru vault-ul shared (adăugat în v2 — adminii vor fi câțiva studenți selectați dintre utilizatori)
- Plăți sau monetizare [ASSUMPTION: modelul de business nu a fost discutat — MVP e gratuit]
- Mobile native
- Accesibilitate WCAG
- Integrare cu platforme externe de curs (Moodle, Teams, etc.)

## Vision

Dacă SecondBrain funcționează la Automatică, același model poate fi extins la orice facultate — un vault per facultate/profil, construit de comunitatea de studenți, interogabil de orice student. Pe termen mai lung, poate deveni un **second brain distribuit pentru învățământul universitar românesc**: fiecare student are vaultul lui personal + vaultul facultății, iar conținutul de calitate e validat de comunitate și profesori.

[ASSUMPTION: Viziunea pe termen lung e speculativă — focusul imediat e MVP-ul de practică.]

## Open Questions (încă nerezolvate)

1. Cum se integrează ARS Contexta exact cu Supabase (Auth, DB, Storage, pgvector)?
2. Cât timp durează transcrierea unui video de 2h pe Whisper local?
3. Ce model Nvidia exact folosim pentru LLM? (Nvidia NIM? API?)
4. Planificarea pe săptămâni — ce se construiește în fiecare din cele 3 săptămâni?
