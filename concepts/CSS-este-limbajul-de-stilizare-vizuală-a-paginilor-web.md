---
descriere: "CSS (Cascading Style Sheets) este limbajul care controlează aspectul vizual al paginilor web: culori, fonturi, spațieri, poziționare, animații și design responsive"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 4_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# CSS este limbajul de stilizare vizuală a paginilor web

CSS = Cascading Style Sheets. Dacă HTML este scheletul, CSS este designul: culori, fonturi, spațieri, poziționare, animații.

**Cascading** = stilurile se aplică în cascadă cu priorități (specificitate, ordine, !important).

Trei moduri de inserare:
1. **Extern** — fișier `.css` separat, legat prin `<link>` în `<head>` (recomandat)
2. **Intern** — în secțiunea `<style>` din `<head>`
3. **Inline** — atributul `style` direct pe element (evitat)

**Selectoare:**
- **Tip**: `p { color: red; }` — toate paragrafele
- **Clasă**: `.buton { ... }` — elemente cu `class="buton"` (reutilizabil)
- **ID**: `#header { ... }` — elementul cu `id="header"` (unic)

**Modelul Box**: content → padding → border → margin

**Culori**: nume (`red`), hex (`#ff0000`), rgb (`rgb(255,0,0)`), rgba (`rgba(255,0,0,0.5)`)

**Unități**: pixeli (px), %, em, rem, vh, vw.

Topics: [[Tehnologii Web]]
