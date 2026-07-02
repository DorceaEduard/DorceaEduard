---
descriere: "PHP oferă 8 tipuri de date (integer, float, string, boolean, array, object, null, resource) cu tipizare dinamică, conversii automate (type juggling) și explicite (type casting), operatori complecși și constante pentru stocarea valorilor neschimbătoare"
materii: ["[[Tehnologii Web]]"]
type: definition
source: "Curs_8_9_TW_2026.pdf"
confidence: established
created: 2026-07-02
---

# PHP suportă tipuri de date dinamice, operatori și funcții pentru prelucrarea datelor

**Tipuri scalare:** `int` (întregi, cu notații: zecimală, hex `0x`, octal `0`, binar `0b`), `float` (virgulă mobilă, notare științifică — ATENȚIE la precizie: `0.1 + 0.2 ≠ 0.3`), `string` (ghilimele simple — literal, ghilimele duble — interpolare + escape), `bool` (true/false, valori falsy: 0, "", "0", [], null).

**Tipuri compuse:** `array` (indexat numeric sau asociativ, cu `foreach` pentru parcurgere), `object` (instanțe de clase).

**Tipuri speciale:** `null` (absența valorii), `resource` (referință externă — fișier, conexiune BD).

**Conversii:** automate (type juggling: `"5" + 3` = 8) sau explicite (`(int) "42px"`, `intval()`, `floatval()`, `strval()`).

**Operatori:** aritmetici (`+`, `-`, `*`, `/`, `%`, `**`, `intdiv()`), atribuire (`=`, `+=`, `.=`), comparație (`==` lax, `===` strict, `<=>` spaceship), logici (`&&`, `||`, `!`), ternar (`?:`), Elvis (`?:`), null coalescing (`??`), nullsafe (`?->` în PHP 8+), pe biți.

**Constante:** `define('NUME', valoare)` la runtime, `const NUME` la compile-time (în clase). Constante predefinite: `PHP_VERSION`, `PHP_INT_MAX`, `__FILE__`, `__DIR__`, `__LINE__`.

Topics: [[Tehnologii Web]]
