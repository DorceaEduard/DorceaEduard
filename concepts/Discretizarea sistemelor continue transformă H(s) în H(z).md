---
descriere: "Transformarea sistemelor continue din domeniul Laplace în sisteme discrete în domeniul z, necesară pentru implementarea controlerelor pe microcontrolere sau DSP-uri"
type: definition
source: "CURS 5 - SA_2026.pdf"
confidence: established
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# Discretizarea sistemelor continue transformă H(s) în H(z)

Sistemele fizice sunt descrise prin modele continue în domeniul Laplace H(s), dar implementarea controlerelor se face pe microcontrolere sau DSP-uri care lucrează cu semnale discrete.

Prin urmare, este necesară transformarea sistemelor continue în sisteme discrete, descrise prin funcții de transfer în domeniul z.

Cele mai utilizate metode sunt **Zero-Order Hold (ZOH)** și **Metoda Tustin**.
