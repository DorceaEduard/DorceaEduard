---
descriere: "Pentru H(s) = 1/(s+1) cu T=1, discretizarea Tustin produce H(z) = (1+z^{-1})/(3(1 - z^{-1}/3))"
type: formula
source: "CURS 5 - SA_2026.pdf"
confidence: supported
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# Transformarea Tustin pentru sistem de ordinul I se aplică direct

Pentru $H(s) = \frac{1}{s+1}$ cu T=1:

**Substituția Tustin** (cu T=1):
$$s = 2 \cdot \frac{z-1}{z+1}$$

**Înlocuire:**
$$H(z) = \frac{1}{2\frac{z-1}{z+1} + 1} = \frac{z+1}{3z-1}$$

**Forma standard cu $z^{-1}$:**
$$H(z) = \frac{1}{3} \cdot \frac{1 + z^{-1}}{1 - \frac{1}{3}z^{-1}}$$
