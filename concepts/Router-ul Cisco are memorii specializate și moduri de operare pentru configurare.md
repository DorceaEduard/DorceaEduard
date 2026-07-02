---
descriere: "Router-ul Cisco este un dispozitiv de nivel 3 cu memorii specializate (RAM, ROM, Flash, NVRAM) și moduri de operare (exec, privileged exec, configure, interface) pentru configurarea rețelei"
type: definition
source: "RC_C4_2025_l3_retea_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Router-ul Cisco are memorii specializate și moduri de operare pentru configurare

Router-ul are patru tipuri de memorii: RAM (volatilă — conține IOS, running-config, tabela de rutare, cache ARP), ROM (non-volatilă — POST, bootstrap, sistem minimal), Flash (non-volatilă — imaginea IOS) și NVRAM (non-volatilă — startup-config). Procesul de boot: POST → Bootstrap → încărcare IOS → încărcare configurare. Comenzi uzuale: `show running-config`, `show ip route`, `show interfaces`, `copy running-config startup-config`. [[Tabela de rutare conține rute pentru forwardarea pachetelor]] este populată dinamic sau static.

Topics: [[Retelistică]]
