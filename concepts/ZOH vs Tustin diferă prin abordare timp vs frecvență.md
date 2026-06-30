---
descriere: "ZOH modelează sistemul fizic în timp (întârziere explicită), Tustin aproximează matematic sistemul în frecvență (fără întârziere explicită)"
type: example
source: "CURS 5 - SA_2026.pdf"
confidence: supported
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# ZOH vs Tustin diferă prin abordare timp vs frecvență

| Caracteristică | ZOH | Tustin |
|---------------|-----|--------|
| Abordare | În timp | În frecvență |
| Semnal | Presupune semnal constant | Face aproximare matematică |
| Model | Fizic (efect de eșantionare) | Comportamental |
| Întârziere | Are întârziere $z^{-1}$ | Fără întârziere explicită |

**Exemplu practic** pentru $H(s) = \frac{1}{s+1}$, T=1s:

**ZOH:** $$H(z) = \frac{0.6321z^{-1}}{1 - 0.3679z^{-1}}$$

**Tustin:** $$H(z) = \frac{1}{3} \cdot \frac{1 + z^{-1}}{1 - \frac{1}{3}z^{-1}}$$
