---
descriere: "TCP este un protocol orientat pe conexiune care asigură livrarea sigură a datelor prin three-way handshake, numere de secvență și control al fluxului, spre deosebire de UDP care este best-effort"
type: definition
source: "RC_C6_2025_l4_transport_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# TCP stabilește conexiuni sigure prin three-way handshake, iar UDP oferă un serviciu rapid fără conexiune

**TCP** (Transmission Control Protocol): orientat pe conexiune, fiabil, cu overhead mare. Stabilește conexiunea prin three-way handshake (SYN → SYN+ACK → ACK). Antetul TCP conține porturi, număr de secvență, număr de acknowledgment, flags (SYN, ACK, FIN), fereastră și checksum. Închiderea conexiunii se face prin four-way handshake (FIN → ACK → FIN → ACK). **UDP** (User Datagram Protocol): neorientat pe conexiune, best-effort, overhead minim (8 B). Folosit de DNS, TFTP, SNMP, streaming. [[Nivelul transport segmentează și multiplexează datele pe bază de porturi]] include ambele protocoale.

Topics: [[Retelistică]]
