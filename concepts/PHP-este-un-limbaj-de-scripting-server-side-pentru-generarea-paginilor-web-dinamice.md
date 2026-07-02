---
descriere: "PHP (PHP: Hypertext Preprocessor) este un limbaj de scripting server-side, open-source, cu tipizare dinamică, incorporabil direct în HTML, care generează dinamic conținut web și poate accesa baze de date și fișiere pe server"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs_8_9_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# PHP este un limbaj de scripting server-side pentru generarea paginilor web dinamice

PHP rulează **exclusiv pe server** — browserul primește doar HTML pur. Fluxul: browser → cerere HTTP → server → interpretor PHP → acces BD → HTML → răspuns HTTP → browser.

**Versiuni:** PHP/FI 1.0 (1994, Rasmus Lerdorf) → PHP 3.0 (1997) → PHP 4.0 (2000) → PHP 5.0 (2004, OOP) → PHP 7.0 (2015, performanță 2×) → PHP 8.0 (2020, JIT, Union Types, Match) → PHP 8.3 (2023, curentă).

**Caracteristici:** open-source și cross-platform (Linux, Windows, macOS), embedded în HTML prin `<?php ?>`, tipizare dinamică, suport nativ pentru baze de date (MySQL, PostgreSQL, SQLite prin PDO), mediu de dezvoltare cu XAMPP/Laragon/MAMP.

**Delimitatori:** `<?php ?>` (formă standard), `<?= ?>` (scurtă pentru echo).

**Identificatori:** încep cu literă sau `_`, case-sensitive, variabilele încep cu `$`. Convenție: snake_case pentru variabile/funcții, PascalCase pentru clase.

**Superglobale:** `$_GET`, `$_POST`, `$_SERVER`, `$_SESSION`, `$_COOKIE`, `$_FILES` — disponibile peste tot, fără `global`.

**Mediu de dezvoltare:** XAMPP (Apache + MySQL + PHP), fișierele `.php` în `htdocs/`, acces la `http://localhost/fisier.php`.

Topics: [[Tehnologii Web]]
