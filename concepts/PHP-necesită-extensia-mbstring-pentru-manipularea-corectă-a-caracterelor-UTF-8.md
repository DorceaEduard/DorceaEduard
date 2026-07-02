---
descriere: "Deoarece funcțiile standard PHP lucrează byte cu byte (nu caracter cu caracter), extensia mbstring (multi-byte string) este necesară pentru manipularea corectă a caracterelor UTF-8 precum ă, â, î, ș, ț sau emoji-uri"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 10-11_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# PHP necesită extensia mbstring pentru manipularea corectă a caracterelor UTF-8

PHP tratează șirurile ca **secvențe de bytes** implicit. Caracterele UTF-8 precum ă, â, î, ș, ț ocupă **2 bytes** fiecare, iar emoji-urile pot ocupa 4 bytes.

**Problema:** `strlen('ăpă')` returnează **6** (bytes), nu 3 (caractere). Funcțiile standard lucrează byte cu byte.

**Soluția:** extensia `mbstring` oferă funcții prefixate `mb_*` care operează corect pe caractere multi-byte:
- `mb_strlen()` — lungimea corectă în caractere
- `mb_strtoupper()` / `mb_strtolower()` — conversie corectă cu diacritice
- `mb_substr()` — extragere subșir pe caractere, nu pe bytes

**Exemplu:** `mb_strlen('ăpă')` returnează **3** (corect), `mb_strtoupper('ăpă')` returnează `'ĂPĂ'`.

Topics: [[Tehnologii Web]]
