---
descriere: "Sistemul de grid Bootstrap este construit pe Flexbox cu 12 coloane și 6 niveluri responsive (xs, sm, md, lg, xl, xxl), permițând layout-uri care se adaptează automat la dimensiunea ecranului"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 5_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# Bootstrap Grid este un sistem de layout responsive cu 12 coloane pentru design mobile-first

Bootstrap oferă clase predefinite pentru grid: `.container` (wrapper), `.row` (rând), `.col-*` (coloane).

**Niveluri responsive:** `.col-` (xs <576px), `.col-sm-` (≥576px), `.col-md-` (≥768px), `.col-lg-` (≥992px), `.col-xl-` (≥1200px), `.col-xxl-` (≥1400px).

**Coloane automate:** clasa `.col` creează coloane cu lățime egală, fără a specifica numărul.

**Aliniere verticală:** `.align-items-start`, `.align-items-center`, `.align-items-end` pe `.row`; `.align-self-*` pe coloane individuale.

**Aliniere orizontală:** `.justify-content-start`, `.justify-content-center`, `.justify-content-end`, `.justify-content-around`, `.justify-content-between`.

**Reordonare:** `.order-first`, `.order-last`, `.order-1` până la `.order-12`.

**Decalare (offset):** `.offset-md-4` mută coloana la dreapta cu numărul specificat de coloane.

**Gutter (spațiere):** clasa `.g-0` elimină padding-ul dintre coloane.

Topics: [[Tehnologii Web]]
