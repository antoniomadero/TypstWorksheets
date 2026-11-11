#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.8cm),
)
#set text(
  font: "Calibri",
  size: 11pt,
  lang: "cs",
)

#import "@preview/cetz:0.5.3"

// Záhlaví písemky

#align(center)[= 1. čtvrtletní písemná práce / 5. ročník ]

#v(2mm)
Jméno a příjmení: #h(3fr)  Body:  #h(1fr)Známka:

#v(4mm)

// Pomocná funkce pro nadpis úlohy s body
#let uloha(cislo, nazev, body) = {
  block(width: 100%, inset: (bottom: 2mm))[
    *#cislo) #nazev* #h(1fr) *(#body)*
  ]
}
#let body-uloh = (4, 4, 6, 4, 4, 4, 4)
// Úloha 1
#uloha("1", "Vypočítej – sčítání a odčítání", body-uloh.at(0))
#text(size: 14pt)[
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    align: center,
    [
      #set align(right)
      #block(width: 2.5cm)[
        #set text(tracking: 0.02em)
        1 124 607 \
        #underline[228 504] \
        #v(8mm)
      ]
    ],
    [
      #set align(right)
      #block(width: 2.5cm)[
        #set text(tracking: 0.02em)
        805 409 \
        #underline[ 302 859] \
        #v(8mm)
      ]
    ],
    [
      #set align(right)
      #block(width: 2.5cm)[
        #set text(tracking: 0.02em)
        2 224 607 \
        #underline[\- 1 328 504] \
        #v(8mm)
      ]
    ],
    [
      #set align(right)
      #block(width: 2.8cm)[
        #set text(tracking: 0.02em)
        18 805 409 \
        #underline[\- 3 102 859] \
        #v(8mm)
      ]
    ],
  )]

#v(2mm)

// Úloha 2
#uloha("2", "Násobení", body-uloh.at(1))
#text(size: 15pt)[
  #grid(
    columns: (1fr, 1fr),
    align: center,
    [
      #set align(right)
      #block(width: 2.5cm)[
        #set text(tracking: 0.05em)
        64 129 \
        #underline[#h(1cm) #sym.dot.c 64] \
        #v(1.5cm)
      ]
    ],
    [
      #set align(right)
      #block(width: 2.5cm)[
        #set text(tracking: 0.05em)
        50 625 \
        #underline[#h(1cm) #sym.dot.c 42] \
        #v(1.5cm)
      ]
    ],
  )
]

#v(1cm)

// Úloha 3
#uloha("3", "Dělení (a proveď i zkoušku!)", body-uloh.at(2))
#text(size: 12pt)[
  #grid(
    columns: (1fr, 1fr),
    [
      1585 105 : 7 = #box(width: 2cm, stroke: (bottom: 0.5pt)) #h(1cm) zk. \
      #v(4cm)
    ],
    [
      2059 647 : 8 = #box(width: 2cm, stroke: (bottom: 0.5pt)) #h(1cm) zk. \
      #v(4cm)
    ],
  )]

// Úloha 4
#uloha("4", "Převody jednotek", body-uloh.at(3))
#grid(
  columns: (1fr, 1fr),
  row-gutter: 6mm,
  [55 m = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) cm],
  [24 dm = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) mm],

  [3000 g = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) kg],
  [175 min = #box(width: 1.5cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) h #box(width: 1.5cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) min],

  [900 mm = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) cm],
  [35 kg = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) g],

  [5 t = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) kg],
  [8 hl = #box(width: 3cm, stroke: (bottom: (dash: "dotted", thickness: 1pt))) l],
)

#v(4mm)

// Úloha 5
#uloha("5", "Zaokrouhlování", body-uloh.at(4))
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
  [
    *zaokrouhli na desetitisíce* \
    #v(1mm)
    547 905 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt)) \ #v(2mm)
    1 542 100 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt)) \ #v(2mm)
    15 306 555 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt)) \ #v(2mm)
    8 042 600 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt))
  ],
  [
    *zaokrouhli na tisíce* \
    #v(1mm)
    547 905 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt)) \ #v(2mm)
    1 542 155 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt)) \ #v(2mm)
    15 306 203 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt)) \ #v(2mm)
    8 402 640 $eq.dot$ #box(width: 3.5cm, stroke: (bottom: 0.5pt))
  ],
)

#pagebreak()

// Úloha 6
#uloha("6", "Slovní úloha", body-uloh.at(5))
Filmové představení začíná v 19:15, film trvá 127 min. V kolik hodin přesně končí? \
_(výpočet, odpověď)_

#v(2.5cm)

// Úloha 7
#uloha("7", "Narýsuj", body-uloh.at(6))
#v(1mm)
#list(
  [Kolmici na přímku $p$, která prochází bodem $B$ a jmenuje se $m$.],
  [Rovnoběžku s přímkou $p$, která prochází bodem $A$ a jmenuje se $n$.],
)

#v(5mm)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    // Přímka p
    line((-5, 1), (6, -1), name: "p", stroke: 0.8pt)
    content((-4.8, 1.2), [$p$])

    // Bod A
    circle((-3.5, -1.2), radius: 0.08, fill: rgb("#5577ff"), stroke: 0.5pt)
    content((-3.5, -0.9), [$A$])

    // Bod B
    circle((1.5, 2.2), radius: 0.08, fill: rgb("#5577ff"), stroke: 0.5pt)
    content((1.7, 2.5), [$B$])
  })
]

#v(1fr)
// Bonusová úloha
/*#block(width: 100%, stroke: 0.5pt, inset: 3mm, radius: 2pt)[
  *Bonus:* Úsečky $A B$ a $C D$ nejdříve graficky sečti a výsledek označ barevně jako úsečku $E F$, poté je graficky odečti, výsledek vyznač barevně a označ $G H$.

  #v(5mm)
  #align(center)[
    #cetz.canvas({
      import cetz.draw: *

      // Úsečka AB
      line((-4, 0), (3, 0), stroke: 1pt)
      circle((-4, 0), radius: 0.08, fill: rgb("#5577ff"), stroke: 0.5pt)
      circle((3, 0), radius: 0.08, fill: rgb("#5577ff"), stroke: 0.5pt)
      content((-4, 0.3), [$A$])
      content((3, 0.3), [$B$])

      // Úsečka CD
      line((-3, 1.5), (0.5, 1.5), stroke: 1pt)
      circle((-3, 1.5), radius: 0.08, fill: rgb("#5577ff"), stroke: 0.5pt)
      circle((0.5, 1.5), radius: 0.08, fill: rgb("#5577ff"), stroke: 0.5pt)
      content((-3, 1.8), [$C$])
      content((0.5, 1.8), [$D$])
    })
  ]
  #v(4cm)
]*/

*Bonus: *

*Péče o zvířata: Velký den v útulku - * V útulku mají celkem 48 kg granulí. Pro psy spotřebují třikrát více granulí než pro kočky. Koček je v útulku 6 a každá sní za den přesně 200 g granulí.

Otázka: Na kolik dní vystačí celková zásoba granulí všem zvířatům v útulku?

#v(2fr)

*Detektivní záhada: Ztracený kód od trezoru - * Detektiv Patrik našel zápisník s tajným kódem k trezoru. Místo číslic v něm stálo:
„Kód má 3 cifry. Součet všech tří cifer je 15. Druhá cifra je dvakrát větší než první. Třetí cifra je o 3 menší než druhá.“

Otázka: Jaký je trojciferný kód k trezoru?

#v(2fr)

#let max-body = body-uloh.sum()

#let jednicka-od = calc.round(max-body * 0.91)
#let dvojka-od = calc.round(max-body * 0.75)
#let trojka-od = calc.round(max-body * 0.4)
#let ctyrka-od = calc.round(max-body * 0.25)

#align(center)[
  #block(
    radius: 5pt,
    clip: true,
    stroke: 1pt + gray,
    fill: rgb("#eeeeee"),
  )[
    #text(size: 9pt)[
      #table(
        columns: 6,
        align: center,
        stroke: 0.5pt,

        [Známka], [1], [2], [3], [4], [5],
        [Body],
        [#max-body–#jednicka-od],
        [#(jednicka-od - 1)–#dvojka-od],
        [#(dvojka-od - 1)–#trojka-od],
        [#(trojka-od - 1)–#ctyrka-od],
        [#(ctyrka-od - 1)–0],
      )
    ]
  ]]
