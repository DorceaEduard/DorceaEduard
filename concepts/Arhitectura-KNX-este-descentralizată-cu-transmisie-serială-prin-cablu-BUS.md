---
descriere: "Arhitectura sistemului KNX este descentralizată, pe bază de evenimente, cu transmisie serială a telegramelor prin cablu BUS la 24V, acces CSMA și confirmare la recepție"
materii: ["[[Automatizarea Clădirilor]]"]
type: definition
source: "C11-C13 - Conceptul BMS si standardul KNX.pdf"
confidence: established
created: 2026-07-02
---
# Arhitectura KNX este descentralizată pe bază de evenimente cu transmisie serială prin cablu BUS

O linie KNX poate conecta până la 64 de participanți. Maximum 15 linii formează o arie (prin cuploare de linie), iar 15 arii se leagă prin cuploare de domeniu. Lungimea maximă a unei linii este 1000m, distanța maximă față de sursă 350m, iar între doi participanți 700m. Telegramele sunt modulate pe tensiunea de 24V (0 logic = impuls, 1 logic = lipsă impuls). Accesul CSMA: dacă BUS-ul e liber, orice participant poate emite; la coliziune, cel cu prioritate mai mare se impune.

Topics: [[Automatizarea Clădirilor]]
