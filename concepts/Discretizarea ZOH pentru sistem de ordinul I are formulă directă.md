---
descriere: "Pentru H(s) = 1/(s+a), discretizarea ZOH este H(z) = (1-e^(-aT))/(z-e^(-aT))"
type: formula
source: "CURS 5 - SA_2026.pdf"
confidence: established
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# Discretizarea ZOH pentru sistem de ordinul I are formulă directă

Pentru un sistem de ordinul I cu funcția de transfer:
$$H(s) = \frac{1}{s + a}$$

Discretizarea ZOH este:
$$H(z) = \frac{1 - e^{-aT}}{z - e^{-aT}}$$

**Exemplu numeric** (a=1, T=1):
- $e^{-1} = 0.3679$
- $1 - e^{-1} = 0.6321$
- **ZOH:** $$H(z) = \frac{0.6321}{z - 0.3679} = \frac{0.6321z^{-1}}{1 - 0.3679z^{-1}}$$
