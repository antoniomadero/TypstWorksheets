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

Další tvary najdeme v dokumentaci - #link("https://p5js.org/reference/#Shape")

Zde vidíme, jak je důležité celou dobu umět pracovat se souřadnicovým systémem plátna.

Barvy jsou nedílnou součástí grafiky a v p5.js je můžeme nastavit pomocí funkce `fill()`, která určuje barvu výplně tvarů, a `stroke()`, která určuje barvu obrysu tvarů. Obě tyto funkce přijímají RGB hodnoty pro definici barvy, stejně jako funkce `background()` pro nastavení barvy pozadí.

U linky `line()` můžeme nastavit pouze barvu obrysu pomocí `stroke()`, protože linka nemá výplň. Snadno také můžeme nastavit tloušťku čar pomocí funkce `strokeWeight()`, která přijímá hodnotu v pixelech.

== Cvičení:
+ Nakresli kruh s žlutou výplní a zeleným obrysem.
+ Nakresli úsečku s oranžovým obrysem a tloušťkou 5 pixelů.
+ Nakresli čtverec s růžovou výplní a šedým obrysem.

růžová: `fill(255, 192, 203);` nebo `fill('pink');`

=== Vlajka Japonska
Vlajka Japonska se skládá z bílého pozadí a červeného kruhu uprostřed, který symbolizuje slunce. Pro vytvoření této vlajky použijeme funkci `background()` pro nastavení bílého pozadí a funkci `circle()` pro nakreslení červeného kruhu.

Vlajka má poměr stran 3:2 (width:height). Kruh je umístěn přesně uprostřed plátna a jeho průměr jsou 3/5 *výšky* vlajky.

== Začínáme s čárami
Nejjednodušší tvar, který můžeme nakreslit, je čára - úsečka `line()`

Ta je určená 4 parametry: `line(x1, y1, x2, y2)`, kde `(x1, y1)` jsou souřadnice začátku úsečky a `(x2, y2)` jsou souřadnice konce úsečky.

Například, pro nakreslení úsečky z levého horního rohu do pravého dolního rohu plátna použijeme:
```js
line(0, 0, width, height);
```
Díky proměnným `width` a `height` bude tato úsečka *vždy* sahat od levého horního rohu k pravému dolnímu rohu, (bez ohledu na velikost plátna).

=== Cvičení 2:
+ Nakresli svislou úsečku rozdělující plátnona dvě poloviny.
+ Nakresli úsečku z levého dolního rohu do pravého horního rohu plátna (úhlopříčka).
+ Nakresli druhou úhlopříčku z levého horního rohu do pravého dolního rohu plátna.
+ Nakresli kříž *uprostřed* plátna (dvě úsečky, které se protínají).
