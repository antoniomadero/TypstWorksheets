#show link: set text(fill: maroon)
#show raw: set text(fill: blue)

= Úvod do kreativního programování v JavaScriptu (p5.js)
P5js je knihovna pro kreativní programování, která umožňuje snadno vytvářet grafiku a interaktivní projekty pomocí JavaScriptu. Pracovat budeme v online editoru p5.js, který je dostupný na adrese *#link("https://editor.p5js.org")*. Tento editor nám umožní psát kód, spouštět ho a okamžitě vidět výsledky.

Při spuštění editoru se nám zobrazí základní struktura kódu, která obsahuje dvě hlavní funkce: `setup()` a `draw()`. Funkce `setup()` se spustí *pouze jednou* na začátku a slouží k nastavení prostředí, zatímco funkce `draw()` se spouští *opakovaně* a slouží k vykreslování grafiky.

```js
function setup() {
  createCanvas(400, 300);
}

function draw() {
  background(220);
}
```
Základem je tedy pracovní prostor - plátno, které vytvoříme pomocí funkce `createCanvas()`. V tomto případě jsme vytvořili plátno o rozměrech 400x300 pixelů. Funkce `background()` nám umožňuje nastavit barvu pozadí, přičemž hodnota 220 představuje světle šedou barvu.

== Plátno
Plátno je prostor, na kterém budeme kreslit. Velikost plátna se nastavuje pomocí funkce `createCanvas(width, height)`, kde `width` je šířka a `height` je výška v pixelech. Například, pro vytvoření plátna o rozměrech 600x400 pixelů použijeme:

```js
function setup() {
  createCanvas(600, 400);
}
```
`width` a `height` jsou _*proměnné*_ , které nám umožňují získat aktuální šířku a výšku plátna, což je užitečné pro umisťování tvarů na správná místa bez nutnosti tvrdě kódovat souřadnice.

=== Where the hell id "Zero"?
Souřadný systém v p5.js začíná v levém horním rohu plátna, který se označuje jako bod `(0, 0)`. Osa `x` roste směrem doprava a osa `y` roste směrem dolů. To znamená, že pokud chceme umístit tvar do středu plátna, musíme použít souřadnice `(width / 2, height / 2)`.

#align(center)[#image("images/platno.svg", width: 50%)]

Používáme tedy klasický *kartézský souřadný* systém, ale s tím rozdílem, že osa *`y` roste směrem dolů*, což je běžné v grafických knihovnách. Tento systém nám umožňuje snadno umisťovat tvary a vytvářet grafiku podle našich představ.

== Barvy
Barvu pozadí nastavujeme pomocí funkce `background()`, která přijímá hodnoty pro *červenou, zelenou a modrou* složku barvy *(RGB)*. Každá složka může nabývat hodnot od *0 do 255*, kde 0 znamená žádnou intenzitu a 255 znamená plnou intenzitu. Je možné požít i *jedinou hodnotu*, která se použije pro všechny tři složky, což nám umožní snadno nastavit *odstíny šedé*.
Barvy je možné definovat i pomocí *hexadecimálního kódu* (například `#FF0000` pro červenou) nebo pomocí *názvu barvy* (například `red` pro červenou).
Příklady nastavení barvy pozadí:
- Bílá: `background(255, 255, 255);` nebo `background(255);`
- Červená: `background(255, 0, 0);` nebo `background('red');`
`color()` je funkce, která nám umožňuje vytvořit barvu a uložit ji do proměnné pro pozdější použití. Například:
```js
let myColor;
function setup() {
  createCanvas(400, 300);
  myColor = color(255, 0, 0); // vytvoří červenou barvu
}
function draw() {
  background(myColor); // použije uloženou barvu jako pozadí
}
```
`colorMode(RGB);` je výchozí režim, ale p5.js podporuje i další režimy, jako je HSB (Hue, Saturation, Brightness), které nám umožňují pracovat s barvami jiným způsobem. Další režimy jsou například HSL (Hue, Saturation, Lightness) nebo CMYK (Cyan, Magenta, Yellow, Key/Black). O těch se budeme uččit v některé z posledních lekcí.
