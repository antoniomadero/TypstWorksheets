= Trojčlenka
- Postup, kterým snadno řešíme slovní úlohy a problémy, kde známe tři údaje, které spolu souvisí (tvoří úměru) a čtvrtý máme vypočítat
- Důležitým krokem je určení jejich vztahu čili zda se jedná o přímou, či nepřímou úměru
- První krokem je sestavit správně zápis (určit závislé a nezávislé proměnné)

+ 12 zedníků postaví zeď za 96 hodin. Za kolik hodin postaví 18 zedníků tutéž zeď?
12 zedníků	96 hodin
18 zedníků	x hodin
18 : 12 = 96 : x
12·9618  = 2·963 = 2·321 = 64 hodin

+ Pumpa přečerpala za 17 minut 1445 litrů vody. Kolik vody přečerpá za ½ hodiny?
17 min	1445 l
30 min	x l
30 : 17 = x : 1445
30·144517 = 30·851 = 2550 litrů
1445 : 17 = 85
85
0

+ Z 2 kg švestek se získá 600 g povidel. Kolik povidel se získá z 3,2 kg švestek?
2000 g	600 g
3200 g	x g
3200 : 2000 = x : 600
3200·6002000 = 320·62 = 320·31 = 960 g
+ Tři dělníci vyhloubí příkop za 8 dní. Za jak dlouho vykonají tuto práci 4 dělníci?
3 dělníci	8 dní
4 dělníci	x dní
4 : 3 = 8 : x
3·84 = 6 dní


#table(
  columns: (auto, auto, auto),
  stroke: none,
  // Skryje čáry tabulky
  gutter: 10pt,
  // Mezera mezi sloupci

  $arrow.t$, [10 kg brambor], [150 Kč],
  $arrow.t$, [25 kg brambor], [$x$ Kč],
)

$ 10 / 25 = 150 / x $

#table(
  columns: (20pt, auto, auto),
  stroke: none,
  align: center + horizon,

  // Šipka přes dva řádky v prvním sloupci
  table.cell(rowspan: 2)[#scale(x: 100%, y: 200%)[$arrow.t$]],
  [5 m],
  [100 Kč],
  table.cell(rowspan: 2)[#scale(x: 100%, y: 200%)[$arrow.b$]],
  [8 m], [$x$ Kč],
)


#table(
  columns: (20pt, auto, 40pt, auto, 20pt),
  // Šipka, Text, Mezera, Text, Šipka
  stroke: none,
  // Žádné mřížky
  align: (center + horizon, left, center, left, center + horizon),
  gutter: 5pt,

  // PRVNÍ ŘÁDEK
  // Levá šipka přes 2 řádky
  table.cell(rowspan: 2)[#move(dy: 2pt)[#scale(x: 150%, y: 250%)[$arrow.t$]]],
  [$x_1$],
  [......],
  [$y_1$],
  // Pravá šipka přes 2 řádky
  table.cell(rowspan: 2)[#move(dy: 2pt)[#scale(x: 150%, y: 250%)[$arrow.t$]]],

  // DRUHÝ ŘÁDEK
  [$x_2$],
  [......],
  // Podtržený výsledek (y2)
  [$y_2$],
)

