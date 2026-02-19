#show link: set text(fill: maroon)
#show raw: set text(fill: blue)

= Lekce 2 - Tvary a barvy
Základní tvary, které můžeme snadno kreslit v p5.js, jsou ty, které již známe z hodin geometrie: obdélníky, kruhy, úsečky, trojúhelníky a čtyřúhelníky. Tyto tvary nám umožní vytvářet různé grafické prvky a kombinovat je do složitějších obrazů.
Používáme funkce:
- `rect(x, y, width, height)` pro obdélníky
- `circle(x, y, průměr)` pro kruhy
- `line(x1, y1, x2, y2)` pro úsečky (linky)
- `triangle(x1, y1, x2, y2, x3, y3)` pro trojúhelníky
- `quad(x1, y1, x2, y2, x3, y3, x4, y4)` pro čtyřúhelníky
- `square(x, y, velikost)` pro čtverce (speciální případ obdélníku)

Zde vidíme, jak je důležité celou dobu umět pracovat se souřadnicovým systémem plátna.

Barvy jsou nedílnou součástí grafiky a v p5.js je můžeme nastavit pomocí funkce `fill()`, která určuje barvu výplně tvarů, a `stroke()`, která určuje barvu obrysu tvarů. Obě tyto funkce přijímají RGB hodnoty pro definici barvy, stejně jako funkce `background()` pro nastavení barvy pozadí.

