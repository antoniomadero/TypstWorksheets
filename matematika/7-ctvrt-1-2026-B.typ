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

#align(center)[= 1. čtvrtletní písemná práce / 7. ročník – B]

#v(2mm)
Jméno a příjmení: #h(3fr) Body: #h(1fr) Známka:

#v(4mm)

#let uloha(cislo, nazev, body) = {
  block(width: 100%, inset: (bottom: 2mm))[
    *#cislo) #nazev* #h(1fr) *(#body bodů)*
  ]
}

#let body-uloh = (4, 8, 4, 8, 6)

#uloha("1", "Převeď zlomky na společného jmenovatele a porovnej", body-uloh.at(0))
U každé dvojice zlomky rozšiř na společného jmenovatele a doplň znaménko $<$, $>$ nebo $=$.

#grid(
  columns: (1fr, 1fr),
  row-gutter: 3mm,
  [ $ 2/3 #h(1.5em) 5/8 $ ], [$ 7/10 #h(1.5em) 11/15 $],
  v(3em), v(3em),
  [$ 5/8 #h(1.5em) 7/12 $], [$ 3/4 #h(1.5em) 5/7 $],
  v(3em), v(3em),
)

#v(3mm)

#uloha("2", "Zkrať zlomky na základní tvar", body-uloh.at(1))
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align: left,
  column-gutter: 4mm,
  [$ 24/36 = $], [$ 35/49 = $], [$ 45/75 = $], [$ 54/72 = $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 28/42 = $], [$ 48/56 = $], [$ 36/54 = $], [$ 72/108 = $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 45/63 = $], [$ 32/80 = $], [$ 42/98 = $], [$ 52/91 = $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 44/55 = $], [$ 36/48 = $], [$ 42/63 = $], [$ 88/121 = $],
)

#v(3cm)

#uloha("3", "Sečti a odečti zlomky", body-uloh.at(2))

#grid(
  columns: (auto, auto, auto, auto),
  align: left,
  column-gutter: 2.8cm,
  [$ 4/9 + 3/9 = $ \
    $ 3/4 + 1/8 = $],
  [$ 11/15 - 4/15 = $ \
    $ 5/6 - 1/2 = $],
  [$ 3/8 + 2/8 = $ \
    $ 2/3 + 1/6 = $],
  [$ 9/10 - 2/10 = $ \
    $ 7/8 - 1/4 = $],
)


#pagebreak()
#uloha("4", "Sečti a odečti zlomky – výsledek uveď v základním tvaru", body-uloh.at(3))
U každého příkladu ukaž postup. Za správný postup a výsledek v základním tvaru je 1 bod.
#grid(
  columns: (auto, 1fr, auto),

  [
    $ 7/10 + 4/15 = $ \
    $ 5/6 + 3/10 = $ \
    $ 9/10 - 4/15 = $ \
    $ 11/12 - 3/20 = $
  ],
  [
    $ 7/12 + 5/18 = $ \
    $ 7/10 + 3/14 = $ \
    $ 7/10 - 2/15 = $ \
    $ 13/15 - 3/20 = $
  ],
)

#v(15mm)

#uloha("5", "Zobraz ve středové souměrnosti", body-uloh.at(4))
Narýsuj obraz čtyřúhelníku $A B C D$ a trojúhelníku $E F G$ ve středové souměrnosti se středem $S$. Obrazy označ $A'$, $B'$, $C'$, $D'$ a $E'$, $F'$, $G'$.

#v(5mm)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    // Čtyřúhelník ABCD (vlevo nahoře)
    line((-4.5, 1.5), (-3.5, 3.2), stroke: 1.2pt)
    line((-3.5, 3.2), (-1.5, 2.5), stroke: 1.2pt)
    line((-1.5, 2.5), (-2.5, 0.8), stroke: 1.2pt)
    line((-2.5, 0.8), (-4.5, 1.5), stroke: 1.2pt)

    circle((-4.5, 1.5), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-3.5, 3.2), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-1.5, 2.5), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-2.5, 0.8), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    content((-4.8, 1.5), [$A$])
    content((-3.5, 3.5), [$B$])
    content((-1.2, 2.7), [$C$])
    content((-2.7, 0.5), [$D$])

    // Trojúhelník EFG (vlevo dole)
    line((-4.0, -0.5), (-1.5, -0.8), stroke: 1.2pt)
    line((-1.5, -0.8), (-3.0, -2.5), stroke: 1.2pt)
    line((-3.0, -2.5), (-4.0, -0.5), stroke: 1.2pt)

    circle((-4.0, -0.5), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-1.5, -0.8), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-3.0, -2.5), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    content((-4.3, -0.4), [$E$])
    content((-1.2, -0.7), [$F$])
    content((-3.1, -2.85), [$G$])

    // Střed souměrnosti S
    circle((0.5, 0.3), radius: 0.09, fill: rgb("#e76f51"), stroke: 0.5pt)
    content((0.65, 0.6), [$S$])
  })
]

#v(1fr)

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
  ]
]
