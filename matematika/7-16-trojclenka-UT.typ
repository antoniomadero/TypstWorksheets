#import "funkce.typ": trojclenka
#let ramecek(obsah) = block(
  width: 100%, // Šířka přes celý list
  fill: rgb("#ddf3fd"), // Velmi světle modrá výplň
  stroke: (left: 4pt + blue),
  radius: 8pt, // Kulaté rohy
  inset: 1.5em, // Mezera mezi textem a okrajem rámečku
  [
    #set text(size: 11pt, fill: rgb("#004080")) // Nastavení textu uvnitř
    #set list(spacing: 1.5em)             // Hezčí odsazení odrážek
    #obsah
  ],
)
= Trojčlenka
#ramecek([
  - Způsob zápisu a řešení příkladů (slovních úloh), kde známe tři údaje a čtvrtý máme vypočítat
  - důležitým krokem je určení vztahu mezi těmito údaji (přímá nebo nepřímá úměra) a sestavení správného zápisu (určení závislých a nezávislých proměnných)
  - Výpočet nám vede k sestavení úměry (dvou poměrů, které se rovnají)
])


=== 1. 12 zedníků postaví zeď za 96 hodin. Za kolik hodin postaví 18 zedníků tutéž zeď?

#trojclenka("12 zedníků", "96 hodin", "18 zedníků", "x hodin", prima: false)

#pad(left: 1.5em)[18 : 12 = 96 : x

  12·9618  = 2·963 = 2·321 = #underline()[64 hodin]
]

*_Odpověď_*: 18 zedníků postaví zeď za 64 hodin.

=== 2. Pumpa přečerpala za 17 minut 1445 litrů vody. Kolik vody přečerpá za $1/2$ hodiny?

#trojclenka("17 minut", "1445 litrů", "30 minut", "x litrů")

#pad(left: 1.5em)[
  30 : 17 = x : 1445

  $(30·1445)/17$= 30·85 = #underline()[2550 litrů]

  1445 : 17 = 85
]
*_Odpověď_*: Pumpa přečerpá za půl hodiny 2550 litrů vody.


=== 3. Z 2 kg švestek se získá 600 g povidel. Kolik povidel se získá z 3,2 kg švestek?

#trojclenka("2 kg", "600 g", "3,2 kg", "x g")

#pad(left: 1.5em)[
  3200 : 2000 = x : 600

  $(3200·600)/2000$= 320·62 = 320·31 = #underline()[960 g]
]

*_Odpověď_*:

=== 4. Tři dělníci vyhloubí příkop za 8 dní. Za jak dlouho vykonají tuto práci 4 dělníci?

#trojclenka("3 dělníci", "8 dní", "4 dělníci", "x dní", prima: false)

#pad(left: 1.5em)[4 : 3 = 8 : x

  $(3·8)/4$ = #underline()[6 dní]
]

*_Odpověď_*: 4 dělníci vykonají tuto práci za 6 dní.


