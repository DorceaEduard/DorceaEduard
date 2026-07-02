---
descriere: "Un pachet HTTP traversează întreaga stivă OSI de la expeditor la receptor printr-un proces de încapsulare succesivă, rutare între subrețele și decapsulare la destinație"
type: example
source: "RC_C9_recapitulare.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Un pachet HTTP traversează întreaga stivă OSI prin încapsulare și rutare succesivă

Scenariu: Host A trimite HTTP către www.example.com. Pași: (1) Host A determină că serverul DNS e în altă subrețea → trimite ARP Request pentru gateway → primește MAC-ul routerului. (2) Cererea DNS este trimisă prin gateway către serverul DNS, care returnează IP-ul 10.10.12.10. (3) Host A încapsulează pachetul HTTP (Layer 7→4→3→2→1) și îl trimite către gateway. (4) Routerele realizează rutarea pe baza tabelei de rutare până la rețeaua destinație. (5) La destinație, are loc decapsularea inversă (Layer 1→2→3→4→7). [[Nivelurile superioare OSI asigură interfața cu utilizatorul]] împreună cu [[Nivelul rețea realizează rutarea pachetelor]] ilustrează colaborarea între niveluri.

Topics: [[Retelistică]]
