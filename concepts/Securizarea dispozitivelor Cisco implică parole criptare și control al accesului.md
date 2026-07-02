---
descriere: "Securizarea dispozitivelor Cisco implică setarea de parole pentru consolă și acces remote, criptarea parolelor, timeout-uri, liste de control acces și utilizatori cu niveluri de privilegii"
type: algorithm
source: "RC_C8_2025_securitate.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Securizarea dispozitivelor Cisco implică parole, criptare și control al accesului

Configurare parole: `enable secret` (criptată, recomandată) pentru accesul în privileged exec, `line console 0` cu `password` și `login` pentru acces fizic, `line vty 0 15` cu `password` și `login` pentru acces remote (SSH). `service password-encryption` criptează parolele în running-config. `exec-timeout` stabilește timeout-ul sesiunii. Listele de acces (`access-list`) pe liniile vty restricționează accesul după IP. Utilizatorii se definesc cu `username ... secret` și `login local`, cu posibilitatea asignării de niveluri de privilegii (0-15) pentru control granular al comenzilor. [[Router-ul Cisco are memorii specializate și moduri de operare]] beneficiază de aceste măsuri de securitate.

Topics: [[Retelistică]]
