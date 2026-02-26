= Stromy v lese - P5.js
== Co budete potřebovat:
#link("https://editor.p5js.org/") - online editor pro p5.js
*Příkazy: *

`createCanvas()` - funkce pro vytvoření plátna

`background()` - funkce pro nastavení barvy pozadí

`fill()` - funkce pro nastavení barvy výplně

`rect()` - funkce pro nakreslení obdélníku

`triangle()` - funkce pro nakreslení trojúhelníku

`stroke()` - funkce pro nastavení barvy čáry

`strokeWeight()` - funkce pro nastavení tloušťky čáry

*Funkce:*

`for()` - cyklus pro opakování bloku kódu

`function()` - pro vytvoření vlastní funkce

== Kreslíme stromy
Strom se skládá z kmene a koruny. Kmen nakreslíme pomocí funkce `rect()`, korunu nakreslíme pomocí funkce `triangle()`. Vytvoříme funkci `Strom(x, y, trunkWidth, trunkHeight, crownSize)`, která nám umožní nakreslit strom na zadané souřadnice `(x, y)` s danou šířkou a výškou kmene a velikostí koruny.
```javascript
function Strom(x, y) {
  // Kreslení kmene
  fill("brown"); // Hnědá barva pro kmen
  rect(x-10, y-20, 20, 40);
  // Kreslení koruny
  fill(34, 139, 34); // Zelená barva pro korunu
  triangle(x - crownSize/2, y, x + crownSize/2, y, x, y - crownSize);
}
```

