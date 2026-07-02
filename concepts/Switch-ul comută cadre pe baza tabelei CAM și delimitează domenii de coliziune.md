---
descriere: "Switch-ul comută cadre pe baza tabelei CAM, învață dinamic adresele MAC și delimitează domenii de coliziune, dar extinde domeniile de broadcast"
type: definition
source: "RC_C3_2025_l_legatura_date_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Switch-ul comută cadre pe baza tabelei CAM și delimitează domenii de coliziune

Switch-ul operează la nivelul 2 (uneori și nivelul 3), luând decizii pe baza adreselor MAC. Tabela CAM memorează asocieri MAC-port. Operații: **learning** (învață pozițiile nodurilor), **filtering** (nu transmite între segmente dacă nodurile sunt pe același port), **forwarding** (transmite către portul destinație), **flooding** (trimite pe toate porturile dacă destinația nu este cunoscută). Metode de comutare: cut-through (fast-forward, fragment-free) și store-and-forward. [[Nivelul legătură de date transmite cadre cu adrese MAC]] depinde de funcționarea switch-ului pentru forwardarea cadrelor.

Topics: [[Retelistică]]
