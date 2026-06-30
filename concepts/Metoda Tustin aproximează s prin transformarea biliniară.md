---
descriere: "Metoda Tustin (transformare biliniară) transformă sistemele continue în discrete prin substituția s = (2/T)*(z-1)/(z+1), păstrând comportamentul general al sistemului"
type: definition
source: "CURS 5 - SA_2026.pdf"
confidence: established
materii: ["[[Sisteme Automate]]"]
created: 2026-06-30
---

# Metoda Tustin aproximează s prin transformarea biliniară

Metoda Tustin, cunoscută și ca **transformare biliniară**, este o metodă de aproximare care transformă sistemele continue în sisteme discrete prin substituția variabilei s, păstrând comportamentul general al sistemului.

**Substituția Tustin:**
$$s = \frac{2}{T} \cdot \frac{z-1}{z+1}$$

unde T = perioada de eșantionare, s = variabila Laplace, z = variabila transformatei Z.

**Pași:**
1. Se înlocuiește s cu transformarea Tustin
2. Se simplifică expresia
3. Se obține funcția discretă H(z)
