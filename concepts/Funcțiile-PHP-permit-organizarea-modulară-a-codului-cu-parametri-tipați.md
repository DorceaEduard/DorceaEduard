---
descriere: "Funcțiile PHP sunt blocuri de cod reutilizabile, cu type hints, parametri cu valori implicite, argumente numite (PHP 8+), union types, variadice, arrow functions (PHP 7.4+), și suport pentru funcții anonime cu captarea variabilelor prin use"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs_8_9_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# Funcțiile PHP permit organizarea modulară a codului cu parametri tipați

**Declarare:** `function nume($param) { ... return $valoare; }`. Funcțiile pot fi apelate **înainte** de declarare (PHP le hoistează).

**Type hints (PHP 7+):** `function(int $a, string $b): float { ... }`. `declare(strict_types=1)` activează verificarea strictă a tipurilor.

**Parametri cu valori implicite:** `function f(int $a, int $b = 10)` — valorile implicite trebuie să fie ultimele.

**Named arguments (PHP 8+):** `creazaStudent(varsta: 22, nume: 'Ion')` — ordinea nu mai contează.

**Nullable:** `function f(): ?string` — poate returna string SAU null.

**Union Types (PHP 8+):** `function f(int|string $input): string`.

**Variadice:** `function f(int ...$numere)` — operatorul splat `...` colectează argumentele într-un array. La apel, `...$array` expandează array-ul.

**Funcții anonime (closures):** `$dublu = function(int $x) use ($factor): int { ... };`. Capturarea variabilelor cu `use` (prin valoare) sau `use (&$var)` (prin referință).

**Arrow functions (PHP 7.4+):** `fn($x) => $x * $factor` — capturare automată, sintaxă concisă, ideală cu `array_map`, `array_filter`, `array_reduce`.

**Instrucțiuni condiționale:** `if/elseif/else`, `switch` (comparație laxă `==`), `match` (PHP 8+, comparație strictă `===`, returnează valoare, fără fall-through).

Topics: [[Tehnologii Web]]
