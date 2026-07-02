---
descriere: "ZOH este un model matematic al modului în care un DAC reconstruiește un semnal analogic din valori discrete, menținând constantă ultima valoare între eșantioane"
type: definition
source: "CURS 5 - SA_2026.pdf"
confidence: established
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# Zero-Order Hold menține constantă ultima valoare eșantionată

Zero-Order Hold (ZOH) este un model matematic al modului în care un convertor digital-analogic (DAC) reconstruiește un semnal analogic din valori discrete.

ZOH menține constantă ultima valoare a unui semnal eșantionat până la următorul eșantion. Ieșirea arată ca un semnal în trepte.

**Semnalul discret:** $$u[k] = u(kT)$$

**Semnalul analogic reconstruit:** $$u(t) = u[k], \quad kT \leq t < (k+1)T$$

**Funcția de transfer ZOH:** $$H_{ZOH}(s) = \frac{1 - e^{-sT}}{s}$$
