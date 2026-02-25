#set page(width: 29.7cm, height: 21cm, margin: (
  top: 1cm,
  bottom: 1.5cm,
  left: 1.5cm,
  right: 1.5cm,
))
#set text(size: 0.9em)
#show heading.where(level: 1): set text(size: 1.5em)
#show link: set text(fill: maroon)
#show raw: set text(fill: blue)
#let pozn(it) = text(fill: red, weight: "bold")[#upper(it)]


#align(center)[= Úvod do kreativního programování v JavaScriptu - p5.js]

#pagebreak()

= Seznam lekcí p5.js
\
+ Úvod do p5.js - seznámení s prostředím, plátno (rozměry, barva pozadí)
+ Tvary a barvy
+ Kombinace tvarů a barev - vlajky
+ Animace - (proměnné, funkce draw, pohyb objektů, podmínky)
+ Interaktivita - (myš, klávesnice)
+ Cykly - (for, while)
+ Barevné režimy
+ Funkce - (vlastní funkce, parametry, návratová hodnota)
+ Pokročilé tvary - (bezier, curve, vertex)?

#pagebreak()

#align(center)[= Lekce 0  - pracovní prostor]
\

#columns(2)[
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
]
#pagebreak()


#align(center)[= Lekce 1 - Plátno]
\
#columns(2)[

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

  #colbreak()


  == Barvy
  Barvu pozadí nastavujeme pomocí funkce `background()`, která přijímá hodnoty pro *červenou, zelenou a modrou* složku barvy *(RGB)*. Každá složka může nabývat hodnot od *0 do 255*, kde 0 znamená žádnou intenzitu a 255 znamená plnou intenzitu. Je možné požít i *jedinou hodnotu*, která se použije pro všechny tři složky, což nám umožní snadno nastavit *odstíny šedé*.
  Barvy je možné definovat i pomocí *hexadecimálního kódu* (například `#FF0000` pro červenou) nebo pomocí *názvu barvy* (například `red` pro červenou).
  Příklady nastavení barvy pozadí:
  - Bílá: `background(255, 255, 255);` nebo `background(255);`
  - Červená: `background(255, 0, 0);` nebo `background('red');`

  `colorMode(RGB);` je výchozí režim, ale p5.js podporuje i další režimy, jako je HSB (Hue, Saturation, Brightness), které nám umožňují pracovat s barvami jiným způsobem. Další režimy jsou například HSL (Hue, Saturation, Lightness) nebo CMYK (Cyan, Magenta, Yellow, Key/Black). O těch se budeme uččit v některé z posledních lekcí.
]

#pagebreak()

#align(center)[= Lekce 2 - Tvary a barvy]
\
#columns(2)[
  V p5.js můžeme snadno kreslit geometrické tvary, které již dobře známe z hodin geometrie: obdélníky, kruhy, úsečky, trojúhelníky a čtyřúhelníky. Ty můžeme i kombinovat a vytvářet složitější obrazce.

  Používáme funkce:
  - `rect(x, y, width, height)` pro obdélníky
  - `circle(x, y, průměr)` pro kruhy
  - `line(x1, y1, x2, y2)` pro úsečky (linky)
  - `triangle(x1, y1, x2, y2, x3, y3)` pro trojúhelníky
  - `quad(x1, y1, x2, y2, x3, y3, x4, y4)` pro čtyřúhelníky
  - `square(x, y, velikost)` pro čtverce (speciální případ obdélníku)

  Další tvary najdeme v dokumentaci - #link("https://p5js.org/reference/#Shape")

  Zde vidíme, jak je důležité umět pracovat se *souřadnicovým systémem plátna*.

  Barvy jsou nedílnou součástí grafiky a v p5.js je můžeme nastavit pomocí funkce `fill()`, která určuje barvu výplně tvarů, a `stroke()`, která určuje barvu obrysu tvarů. Obě tyto funkce přijímají RGB hodnoty pro definici barvy, stejně jako funkce `background()`.

  U úsečky - `line()` nastavujeme barvu pomocí `stroke()`, protože linka nemá výplň. Snadno také můžeme nastavit tloušťku čar v pixelech pomocí funkce `strokeWeight()`.

  === Cvičení:
  + Nakresli kruh s žlutou výplní a zeleným obrysem.
  + Nakresli úsečku s oranžovým obrysem a tloušťkou 5 pixelů.
  + Nakresli čtverec s růžovou výplní a šedým obrysem.

  růžová: `fill(255, 192, 203);` nebo `fill('pink');`

  === Vlajka Japonska
  Vlajka Japonska se skládá z bílého pozadí a červeného kruhu uprostřed, který symbolizuje slunce. Pro vytvoření této vlajky použijeme funkce `background()`, `circle()` a `fill()`.

  Vlajka má poměr stran 3:2 (width:height). Kruh je umístěn přesně uprostřed plátna a jeho průměr jsou 3/5 *výšky* vlajky.

  #align(center)[#image("images/Japonsko.svg", width: 20%)]

  #colbreak()

  == Začínáme s čárami
  Nejjednodušší tvar, který můžeme nakreslit, je čára - úsečka `line()`

  Ta je určená 4 parametry: `line(x1, y1, x2, y2)`, kde `(x1, y1)` jsou souřadnice začátku úsečky a `(x2, y2)` jsou souřadnice konce úsečky.

  Například, pro nakreslení úsečky z levého horního rohu do pravého dolního rohu plátna použijeme:
  ```js
  line(0, 0, width, height);
  ```
  Díky proměnným `width` a `height` bude tato úsečka *vždy* sahat od levého horního rohu k pravému dolnímu rohu, (bez ohledu na velikost plátna).

  #pozn[zde doplnit obrázek s úšečkou a souřadnicemi krajních bodů]

  === Cvičení 2:
  + Nakresli svislou úsečku rozdělující plátnona dvě poloviny.
  + Nakresli úsečku z levého dolního rohu do pravého horního rohu plátna (úhlopříčka).
  + Nakresli druhou úhlopříčku z levého horního rohu do pravého dolního rohu plátna.
  + Nakresli kříž *uprostřed* plátna (dvě úsečky, které se protínají).
]

#align(center)[= Lekce 3 - vlajky]
\
#columns(2)[

  Nyní, když umíme kreslit čáry a nastavovat barvy, můžeme začít vytvářet jednoduché vlajky. Začneme s vlajkou Anglie, která se skládá z červeného kříže na bílém pozadí. Pro vytvoření této vlajky použijeme dvě úsečky, které se protínají uprostřed plátna.

  #align(center)[#image("images/Anglie.svg", width: 20%)]
  _Pro borce_: Šířka červeného kříže na vlajce Anglie je 1/5 výšky vlajky a samotná vlajka je 3:5.

  Další jednodnoduchou vlajkou bude vlajka Severního Irska, která se skládá z červené diagonální kříže na bílém pozadí. Pro vytvoření této vlajky použijeme dvě úsečky, které se protínají diagonálně přes plátno.
  #align(center)[#image("images/Severni-Irsko.svg", width: 20%)]

  === Cvičení:
  + Vytvoř vlajku Skotska, která se skládá z bílého diagonálního kříže na modrém pozadí.

  #align(center)[#image("images/Skotsko.svg", width: 20%)]


  Množštví vlajek se skládá ze 3 obdélníků, buď svisle nebo vodorovně. Například, vlajka Německa se skládá ze tří vodorovných pruhů: černého, červeného a zlatého. Pro vytvoření této vlajky použijeme tři obdélníky, které se navzájem nedotýkají, ale jsou umístěny nad sebou.

  `rect(x, y, width, height)` nám umožňuje nakreslit obdélník na plátně. Pro vytvoření tří vodorovných pruhů na vlajce Německa použijeme tři volání funkce `rect()`, kde každý obdélník bude mít stejnou výšku a bude umístěn nad sebou.

  *Barvy:*
  - Černá: `fill(0, 0, 0);`
  - Červená: `fill(255, 0, 0);`
  - Zlatá: `fill(255, 215, 0);`

  #align(center)[#image("images/Nemecko.svg", width: 20%)]

  === Cvičení:
  1. Vytvoř vlajku Itálie, která se skládá ze tří svislých pruhů: zeleného, bílého a červeného.
  #align(center)[#image("images/Itálie.svg", width: 20%)]
  2. Vytvoř vlajku Maďarska, která se skládá ze tří vodorovných pruhů: červeného, bílého a zeleného.
  #align(center)[#image("images/Maďarsko.svg", width: 20%)]
  3. Vytvoř vlajku Francie, která se skládá ze tří svislých pruhů: modrého, bílého a červeného.
  #align(center)[#image("images/Francie.svg", width: 20%)]
  4. Vytvoř vlajku Polska, která se skládá ze dvou vodorovných pruhů: bílého a červeného.
  #align(center)[#image("images/Polsko.svg", width: 20%)]

  /*
   ```js
  function draw() {
    background(255, 255, 255); // bílá

    // černý pruh
    fill(0, 0, 0);
    rect(0, 0, width, height / 3);

    // červený pruh
    fill(255, 0, 0);
    rect(0, height / 3, width, height / 3);

    // zlatý pruh
    fill(255, 215, 0);
    rect(0, (height / 3) * 2, width, height / 3);
  }
  ```
  */

]




