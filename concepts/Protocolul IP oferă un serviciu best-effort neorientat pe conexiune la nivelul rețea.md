---
descriere: "Protocolul IP oferă un serviciu best-effort neorientat pe conexiune la nivelul rețea, iar antetul IPv4 conține câmpuri esențiale precum TTL, adrese sursă/destinație și checksum"
type: definition
source: "RC_C5_2025_l3_retea_2_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Protocolul IP oferă un serviciu best-effort neorientat pe conexiune la nivelul rețea

IP este nerutabil și independent de mediu. Antetul IPv4 conține: versiunea, lungime antet (20-60 B), TOS, lungime totală (max 64 KB), identificare, flags, Fragment Offset, TTL (decrementat la fiecare hop), protocol (1=ICMP, 6=TCP, 17=UDP), header checksum și adresele IP sursă/destinație. TTL previne buclele de rutare. Antetul IPv6 este simplificat: lungime fixă de 40 B, fără checksum și fără fragmentare la routere. [[Nivelul rețea realizează rutarea pachetelor pe baza adreselor IP]] folosește acest protocol.

Topics: [[Retelistică]]
