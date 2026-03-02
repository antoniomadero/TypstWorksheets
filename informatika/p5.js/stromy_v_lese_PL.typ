#show raw: set text(fill: blue)
#let pozn(it) = text(fill: red, weight: "bold")[#upper(it)]

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
Strom se skládá z kmene a koruny. Kmen nakreslíme pomocí funkce `rect()`, korunu nakreslíme pomocí funkce `triangle()`. Nejdříve tsi tedy ukážeme, jak funkce fungují a poté vytvoříme funkci `Strom()`, která nám umožní nakreslit strom jedním příkazem.

#pozn("Zde doplnit obrázek Trojúhelníku a obdélníku se souřadnicemi")

Funkce `Strom(x, y, v)`, nám umožní umístit strom na zadané souřadnice `(x, y)` s danou velikostí `v`.

```javascript
function Strom(x, y, v) {
  // Kreslení kmene
  fill("brown");
  rect(x - v/4, y-v/2, v/2, v);
  // Kreslení koruny
  fill("green");
  for (let i = 0; i < 4; i++) {
     triangle(
      x - v*2/3, y - v/2 - i*v/2,
      x + v*2/3, y - v/2 - i*v/2,
      x , y - 3/2*v - i*v/2
    );
  }
}
```

