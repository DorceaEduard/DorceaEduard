---
descriere: "Pașii pentru discretizarea unui sistem continuu H(s) folosind metoda ZOH: răspuns la treaptă, eșantionare, calcul impuls discret, transformata Z"
type: algorithm
source: "CURS 5 - SA_2026.pdf"
confidence: supported
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# Algoritmul ZOH discretizează sisteme continue în pași

**Pași:**
1. Se calculează răspunsul la semnal treaptă: $$f(t) = \mathcal{L}^{-1}\left\{\frac{H(s)}{s}\right\}$$
2. Se eșantionează: $$f[k] = f(kT)$$
3. Se calculează impulsul discret: $$g[k] = f(k+1) - f(k)$$
4. Se aplică transformata Z: $$H(z) = \mathcal{Z}\{g[k]\}$$

**Formula directă pentru sistem de ordinul I** $(H(s) = \frac{1}{s+a})$:
$$H(z) = \frac{1 - e^{-aT}}{z - e^{-aT}}$$
