---
descriere: "DNS este un sistem ierarhic distribuit care traduce nume de domenii în adrese IP, organizat pe domenii și zone cu servere autoritare și recursive"
type: definition
source: "RC_C7_2025_l5-l7_aplicatii.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# DNS este un sistem ierarhic distribuit care traduce nume de domenii în adrese IP

DNS folosește portul 53 TCP/UDP. Ierarhia: root servers → TLD-uri (.ro, .com, .org) → domenii (utcb.ro) → subdomenii. Tipuri de înregistrări: A (IPv4), AAAA (IPv6), CNAME (alias), MX (mail), NS (name server), PTR (reverse), TXT, SOA (Start of Authority). Tipuri de servere: autoritar (primary/secondary), recursiv, forwarder, caching-only. Rezoluția poate fi recursivă (serverul returnează răspunsul final) sau iterativă (serverul direcționează). Utilitare: `nslookup`, `dig`, `host`. [[Nivelurile superioare OSI asigură interfața cu utilizatorul]] include DNS ca serviciu fundamental.

Topics: [[Retelistică]]
