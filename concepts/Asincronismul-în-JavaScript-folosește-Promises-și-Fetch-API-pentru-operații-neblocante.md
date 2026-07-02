---
descriere: "Asincronismul în JavaScript rezolvă limitarea single-threaded prin mecanisme non-blocking: Callback-uri (model vechi), Promises (obiecte care reprezintă valori viitoare) și Async/Await (sintaxă simplificată), cu Fetch API pentru cereri HTTP"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 7_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# Asincronismul în JavaScript folosește Promises și Fetch API pentru operații neblocante

JavaScript rulează pe un **singur fir de execuție** → operațiile lente (rețea, timeout) ar bloca pagina fără asincronism.

**Mecanisme de asincronism:**
1. **Callback-uri** — funcții transmise ca argument, executate după finalizarea operației (model vechi, duce la "callback hell")
2. **Promises** — obiect cu trei stări: `pending`, `fulfilled`, `rejected`. Lanțuit cu `.then()`, `.catch()`, `.finally()`
3. **Async/Await** — sintaxă simplificată peste Promises, cod liniar cu `async function` și `await`

**Event Loop:** gestionează execuția codului, mută funcțiile în coadă când sunt gata.

**Fetch API:** interfață modernă pentru cereri HTTP bazată pe Promises. Suportă JSON, sintaxă simplă: `fetch(url).then(r => r.json()).then(data => ...)`.

Topics: [[Tehnologii Web]]
