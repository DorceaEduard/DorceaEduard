---
descriere: "PHP oferă patru moduri de definire a șirurilor — ghilimele simple (literal), ghilimele duble (cu interpolare), heredoc (multi-linie cu interpolare) și nowdoc (multi-linie fără interpolare) — plus funcții built-in pentru prelucrare: concatenare, căutare, înlocuire, extragere și transformare"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs 10-11_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# PHP manipulează șirurile de caractere cu patru moduri de delimitare și funcții specifice

**Delimitare șiruri:**
- **Ghilimele simple** (`'șir'`) — text literal, fără interpolare, doar `\\` și `\'` ca escape
- **Ghilimele duble** (`"șir"`) — interpolare variabile (`$var`, `{$var[0]}`), escape sequences (`\n`, `\t`, `\"`)
- **Heredoc** (`<<<EOT ... EOT;`) — multi-linie, comportament ca ghilimele duble (interpolare)
- **Nowdoc** (`<<<'EOT' ... EOT;`) — multi-linie, comportament ca ghilimele simple (fără interpolare)

**Funcții esențiale:**
- Lungime și căutare: `strlen()`, `strpos()`, `strrpos()`, `substr_count()`
- Transformare: `strtolower()`, `strtoupper()`, `ucfirst()`, `ucwords()`
- Eliminare spații: `trim()`, `ltrim()`, `rtrim()`
- Căutare/înlocuire: `str_replace()`, `str_ireplace()`, `substr()`
- Separare/combinare: `explode()`, `implode()`, `str_split()`
- Formatare: `sprintf()`, `number_format()`, `printf()`
- PHP 8+: `str_contains()`, `str_starts_with()`, `str_ends_with()`
- Altele: `str_repeat()`, `str_pad()`, `wordwrap()`

Topics: [[Tehnologii Web]]
