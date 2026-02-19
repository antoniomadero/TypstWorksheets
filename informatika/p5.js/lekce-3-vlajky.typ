#set page(width: 29.7cm, height: 21cm, margin: 1.2cm)
#set text(size: 0.9em)
#show heading.where(level: 1): set text(size: 1.5em)
#show heading.where(level: 2): set text(size: 1.1em)
#show raw: set text(fill: blue)

#align(center)[= p5.js - lekce 3 - vlajky]
#columns(2)[
  == 1. Úvod
  V této lekci budeme používat nejzákladnější tvary a barvy k vytvoření jednoduchých vlajek států. Téměř všechny vlajky států mají jako základ obdélník v poměru 2:3, takže se zaměříme na tento výchozí tvar.
  == 2. Plátno - velikost, poměr a barva
  Většina vlajek má poměr 2:3, což znamená, že šířka je 1,5krát větší než výška. Pro naše plátno použijeme rozměry 600x400 pixelů, což odpovídá tomuto poměru.
  ```js
  function setup() {
    createCanvas(600, 400);
  }
  ```
  V p5.js existují proměnné `width` a `height`, které nám umožňují získat aktuální šířku a výšku plátna. To nám pomůže při umisťování tvarů na správná místa bez nutnosti tvrdě kódovat souřadnice.

  *Barva pozadí* se nastavuje pomocí funkce `background()`, která přijímá hodnoty pro červenou, zelenou a modrou složku barvy (RGB). Například, pro nastavení bílého pozadí použijeme:
  ```js
  background(255, 255, 255);
  ```
  Příklady dalších barev:
  - Červená: `background(255, 0, 0);`
  - Žlutá: `background(255, 255, 0);`
  - Světle zelená: `background(144, 238, 144);`
  - Světle červená: `background(255, 182, 182);`
  - Oranžová: `background(255, 165, 0);`
  - Zelená: `background(0, 255, 0);`
  - Modrá: `background(0, 0, 255);`



  == 3. Tvary
  Pro kreslení tvarů používáme různé funkce:
  - `rect(x, y, width, height)` pro obdélníky
  - `ellipse(x, y, width, height)` pro elipsy (kruhy)
  - `line(x1, y1, x2, y2)` pro čáry
  - `triangle(x1, y1, x2, y2, x3, y3)` pro trojúhelníky
  - `quad(x1, y1, x2, y2, x3, y3, x4, y4)` pro čtyřúhelníky
  #colbreak()
  == 4. Začínáme s čárami
  Nejjednodušší tvar, který můžeme nakreslit, je čára - úsečka `line()`

  Ta je určená 4 parametry: `line(x1, y1, x2, y2)`, kde `(x1, y1)` jsou souřadnice začátku úsečky a `(x2, y2)` jsou souřadnice konce úsečky.

  Například, pro nakreslení úsečky z levého horního rohu do pravého dolního rohu plátna použijeme:
  ```js
  line(0, 0, width, height);
  ```
  Díky proměnným `width` a `height` bude tato úsečka *vždy* sahat od levého horního rohu k pravému dolnímu rohu, (bez ohledu na velikost plátna).

  === Cvičení:
  + Nakresli svislou úsečku rozdělující plátnona dvě poloviny.
  + Nakresli úsečku z levého dolního rohu do pravého horního rohu plátna (úhlopříčka).
  + Nakresli druhou úhlopříčku z levého horního rohu do pravého dolního rohu plátna.
  + Nakresli kříž *uprostřed* plátna (dvě úsečky, které se protínají).

  == 5. Barvy čar
  Barvu čar nastavujeme pomocí funkce `stroke()`, která přijímá RGB hodnoty. Například, pro nastavení červené barvy čar použijeme:
  ```js
  stroke(255, 0, 0);
  ```
  Nastavit můžeme i šířku čar pomocí funkce `strokeWeight()`, která přijímá jeden parametr určující tloušťku čar v pixelech. Například, pro nastavení tloušťky čar na 5 pixelů použijeme:
  ```js
  strokeWeight(5);
  ```
  === Cvičení:
  + Nastav barvu čar na modrou a nakresli kříž uprosted plátna.
  + Nastav barvu čar na zelenou a nakresli úsečku z levého dolního rohu do pravého horního rohu plátna.
  + Nastav barvu čar na oranžovou a nakresli úsečku z levého horního rohu do pravého dolního rohu plátna.
]
#pagebreak()
#columns(2)[
  == 6. Vlajky - level 1
  Nyní, když umíme kreslit čáry a nastavovat barvy, můžeme začít vytvářet jednoduché vlajky. Začneme s vlajkou Anglie, která se skládá z červeného kříže na bílém pozadí. Pro vytvoření této vlajky použijeme dvě úsečky, které se protínají uprostřed plátna.

  #align(center)[#image("images/Anglie.svg", width: 20%)]
  _Pro borce_: Šířka červeného kříže na vlajce Anglie je 1/5 výšky vlajky a samotná vlajka je 3:5.

  Další jednodnoduchou vlajkou bude vlajka Severního Irska, která se skládá z červené diagonální kříže na bílém pozadí. Pro vytvoření této vlajky použijeme dvě úsečky, které se protínají diagonálně přes plátno.
  #align(center)[#image("images/Severni-Irsko.svg", width: 20%)]

  === Cvičení:
  + Vytvoř vlajku Skotska, která se skládá z bílého diagonálního kříže na modrém pozadí.

  #align(center)[#image("images/Skotsko.svg", width: 20%)]

  == 7. Vlajky - level 2
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

  A zakončíme něčím zcela jednoduchým - vlajkou *Japonska*, ta se skládá z červeného kruhu uprostřed bílého pozadí. Použijeme funkci `circle()`, která nám umožní nakreslit kruh. Ten má průměr 3/5 výšky vlajky.

  #align(center)[#image("images/Japonsko.svg", width: 20%)]
]



