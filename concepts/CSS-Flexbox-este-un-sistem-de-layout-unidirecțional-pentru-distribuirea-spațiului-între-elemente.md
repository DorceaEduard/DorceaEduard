---
descriere: "CSS Flexbox (Flexible Box) este un modul de layout unidirecțional care distribuie eficient spațiul între elementele unui container, permițând aliniere, ordonare și redimensionare flexibilă, indiferent de dimensiunile inițiale ale acestora"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 5_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# CSS Flexbox este un sistem de layout unidirecțional pentru distribuirea spațiului între elemente

Flexbox lucrează pe două axe: **axa principală** (main axis) și **axa transversală** (cross axis), directionate prin `flex-direction`.

**Proprietăți pentru container (părinte):**
- `display: flex | inline-flex` — activează contextul flex
- `flex-direction: row | column | row-reverse | column-reverse` — direcția axei principale
- `flex-wrap: nowrap | wrap | wrap-reverse` — permite trecerea pe rând nou
- `flex-flow` — prescurtare pentru `flex-direction` + `flex-wrap`
- `justify-content` — aliniere pe axa principală: flex-start, flex-end, center, space-between, space-around, space-evenly
- `align-items` — aliniere pe axa transversală: stretch, flex-start, flex-end, center, baseline
- `align-content` — aliniere pe mai multe linii transversale
- `gap` — spațiu între elemente

**Proprietăți pentru copii (elemente flex):**
- `order` — ordinea de afișare (default 0)
- `flex-grow` — capacitatea de a crește (proporție)
- `flex-shrink` — capacitatea de a se micșora
- `flex-basis` — dimensiunea implicită înainte de distribuire
- `flex` — prescurtare: `flex-grow flex-shrink flex-basis`
- `align-self` — suprascrie `align-items` pentru elementul individual

`float`, `clear` și `vertical-align` nu au efect asupra elementelor flex.

Topics: [[Tehnologii Web]]
