---
descriere: "Nivelul transport segmentează și multiplexează datele de la aplicații pe bază de porturi, iar socket-ul (IP:port) identifică unic o aplicație pe o stație în rețea"
type: definition
source: "RC_C6_2025_l4_transport_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# Nivelul transport segmentează și multiplexează datele pe bază de porturi

PDU-ul nivelului transport este segmentul. Funcții principale: segmentarea datelor și multiplexarea conversațiilor. Porturile (0-65535) se împart în: well-known (0-1023, servicii standard — HTTP 80, HTTPS 443, DNS 53, SSH 22), înregistrate (1024-49151, aplicații comerciale) și dinamice (49152-65535, folosite de SO). Un socket este perechea IP_sursă:port_sursă — IP_destinație:port_destinație. Comanda `netstat` afișează conexiunile active. [[Nivelul rețea realizează rutarea pachetelor pe baza adreselor IP]] primește segmentele de la nivelul transport.

Topics: [[Retelistică]]
