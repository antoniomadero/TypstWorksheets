#set page(width: 29.7cm, height: 21cm, margin: 1.2cm)
#set text(size: 0.9em)
#show heading.where(level: 1): set text(size: 1.5em)
#show heading.where(level: 2): set text(size: 1.1em)
#show raw: set text(fill: blue)

#align(center)[= p5.js - lekce 3 - vlajky]
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

  A zakončíme něčím zcela jednoduchým - vlajkou *Japonska*, ta se skládá z červeného kruhu uprostřed bílého pozadí. Použijeme funkci `circle()`, která nám umožní nakreslit kruh. Ten má průměr 3/5 výšky vlajky.

  #align(center)[#image("images/Japonsko.svg", width: 20%)]
]



