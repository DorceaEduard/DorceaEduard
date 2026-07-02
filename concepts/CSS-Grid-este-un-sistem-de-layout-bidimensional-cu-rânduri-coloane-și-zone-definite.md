---
descriere: "CSS Grid Layout este un sistem de layout bidimensional care organizează elemente pe rânduri și coloane simultan, spre deosebire de Flexbox care este unidirecțional, oferind control precis asupra plasării și dimensiunilor"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 5_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# CSS Grid este un sistem de layout bidimensional cu rânduri, coloane și zone definite

**Terminologie:** Linie de grid (grid line), pistă (track — spațiu între două linii), celulă (cell), zonă (area — delimitată de 4 linii).

**Proprietăți pentru container:**
- `display: grid | inline-grid` — activează contextul grid
- `grid-template-columns` / `grid-template-rows` — definește dimensiunile pistelor (px, %, **fr** — fracțiuni, `minmax()`, `repeat()`, `auto-fill`, `auto-fit`)
- `grid-template-areas` — definește zone cu nume (`"header header" "main sidebar" "footer footer"`)
- `grid-template` — prescurtare pentru toate cele trei
- `gap` / `row-gap` / `column-gap` — spațiu între celule
- `justify-items` / `align-items` / `place-items` — aliniere elemente în celule
- `justify-content` / `align-content` — alinierea întregului grid în container
- `grid-auto-rows` / `grid-auto-columns` — dimensiunea pistelor implicite
- `grid-auto-flow` — algoritmul de plasare automată: row, column, dense

**Funcții de dimensionare:** `fit-content()`, `minmax(min, max)`, `repeat(n, track)`, `auto-fill`, `auto-fit`, `subgrid`.

Topics: [[Tehnologii Web]]
