# Brainstorm Intent

## Topic
SaaS agentic second brain for students — RAG system that ingests course materials and acts as an intelligent study companion.

## Goal
Build a RAG-powered agentic second brain that students can query to recover, synthesize, and interact with course knowledge. Feasible in 90h for a 3-person team.

## Key Decisions
- **ARS Context** as base infrastructure for RAG pipeline
- **Obsidian** as second brain / knowledge graph layer
- **All transcripts stored as markdown** — canonical KB format
- **No accessibility focus** for MVP — out of scope
- **Pre-loaded content model** — system ships with faculty-shared documents on Supabase; student just logs in and asks

## MVP Scope
- RAG retrieval over course documents
- Automatic transcription of audio/video/PDF/presentations into markdown
- Agentic chat interface (web page)
- Two vaults: **shared** (faculty-wide course materials) + **personal** (student's own notes/recordings)
- Multi-format ingest: recorded lectures, YouTube, PDF, presentations, docs

## Architecture/Stack
- **Infra**: ARS Context (RAG pipeline) + Obsidian (knowledge layer)
- **Backend**: Supabase (DB + auth + storage)
- **Frontend**: Web app (chat + document upload)
- **Transcription**: Automated pipeline (audio/video/doc → markdown)
- **Deploy**: Vercel / Render / Supabase / Resend

## Core User Flow
1. Student logs in
2. Selects or uploads documents (into shared or personal vault)
3. System transcribes/converts to markdown and indexes
4. Student chats with agent — queries across shared + personal vaults
5. Agent retrieves, synthesizes, and presents relevant course content

## Deferred Features
- Accessibility / WCAG compliance
- Absentee recovery agent (smart catch-up sequencing)
- Advanced knowledge graph visualization
- Mobile native app
