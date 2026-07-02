---
descriere: "Tabela de rutare stochează rute direct conectate și rute la distanță (statice sau dinamice), iar selectarea rutei se face pe baza măștii, distanței administrative și metricii"
type: definition
source: "RC_C4_2025_l3_retea_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Tabela de rutare conține rute pentru forwardarea pachetelor între rețele

Tabela de rutare reține pentru fiecare rută: rețeaua destinație, adresa next-hop sau interfața, metrica (hop count, lățime de bandă, cost, latență) și distanța administrativă. Rutele pot fi: direct conectate (distanță 0), statice (distanță 1) sau dinamice (descoperite prin protocoale de rutare: RIP, OSPF, EIGRP, BGP). Ruta implicită (0.0.0.0/0) este folosită pentru orice destinație necunoscută. [[Nivelul rețea realizează rutarea pachetelor pe baza adreselor IP]] utilizează aceste rute pentru decizii.

Topics: [[Retelistică]]
