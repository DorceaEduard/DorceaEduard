---
descriere: "DOM (Document Object Model) este reprezentarea paginii web ca arbore de noduri accesibil dinamic prin JavaScript, permițând selectarea, modificarea și reacția la evenimente ale elementelor HTML"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 7_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# DOM permite manipularea dinamică a elementelor și evenimentelor paginii web

DOM transformă codul HTML într-un **arbore de noduri**: element nodes, text nodes, attribute nodes, document node.

**Selectarea elementelor:**
- Moderne: `document.querySelector()` (primul), `document.querySelectorAll()` (toate — NodeList static)
- Clasice: `getElementById()`, `getElementsByClassName()`, `getElementsByTagName()` (HTMLCollection = live)

**Evenimente:** acțiuni detectate de browser — click, mouseover, keydown, submit, load. JavaScript folosește **Event Loop** pentru a asculta și executa funcții asociate.

**Propagarea evenimentelor:** două faze — **capturing** (de sus în jos) și **bubbling** (de jos în sus). `event.stopPropagation()` oprește propagarea.

**Manipularea formularelor:**
Validarea pe client îmbunătățește experiența utilizatorului. `event.preventDefault()` previnde trimiterea implicită a formularului. Proprietatea `input.value` citește valoarea câmpurilor. Evenimentul `input` declanșează cod la fiecare tastare.

**Caracteristici JavaScript fundamentale:** single-threaded, event-driven, non-blocking, tipare dinamice, prototype-based (obiectele moștenesc prin prototip, nu prin clase tradiționale).

Topics: [[Tehnologii Web]]
