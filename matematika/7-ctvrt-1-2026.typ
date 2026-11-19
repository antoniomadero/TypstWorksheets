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

#align(center)[= 1. čtvrtletní písemná práce / 7. ročník]

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
  [ $ 3/4 #h(1.5em) 5/6 $ ], [$ 5/8 #h(1.5em) 7/12 $],
  v(3em), v(3em),
  [$ 7/9 #h(1.5em) 5/6 $], [$ 4/7 #h(1.5em) 3/5 $],
  v(3em), v(3em),
)

#v(3mm)

#uloha("2", "Zkrať zlomky na základní tvar", body-uloh.at(1))
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align: left,
  column-gutter: 4mm,
  [$ 18/30 = $], [$ 42/56 = $], [$ 30/75 = $], [$ 63/81 = $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 24/42 = $], [$ 54/63 = $], [$ 32/48 = $], [$ 48/108 = $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 35/56 = $], [$ 24/64 = $], [$ 36/84 = $], [$ 65/91 = $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 55/66 = $], [$ 48/60 = $], [$ 35/63 = $], [$ 99/121 = $],
)

#v(3cm)

#uloha("3", "Sečti a odečti zlomky", body-uloh.at(2))

#grid(
  columns: (auto, auto, auto, auto),
  align: left,
  column-gutter: 2.8cm,
  [$ 3/11 + 5/11 = $ \
    $ 5/6 + 1/3 = $],
  [$ 9/13 - 4/13 = $ \
    $ 7/10 - 2/5 = $],
  [$ 2/7 + 3/7 = $ \
    $ 3/8 + 1/4 = $],
  [$ 11/15 - 2/15 = $ \
    $ 11/12 - 1/3 = $],
)


#pagebreak()
#uloha("4", "Sečti a odečti zlomky – výsledek uveď v základním tvaru", body-uloh.at(3))
U každého příkladu ukaž postup. Za správný postup a výsledek v základním tvaru je 1 bod.
#grid(
  columns: (auto, 1fr, auto),

  [
    $ 5/6 - 7/15 = $ \
    $ 1/6 + 7/10 = $ \
    $ 7/10 + 11/15 = $ \
    $ 5/12 - 7/20 = $
  ],
  [
    $ 5/6 - 3/14 = $ \
    $ 3/10 + 5/14 = $ \
    $ 3/10 + 8/15 = $ \
    $ 11/15 - 7/20 = $
  ],
)

#v(15mm)

#uloha("5", "Zobraz ve středové souměrnosti", body-uloh.at(4))
Narýsuj obraz čtyřúhelníku $A B C D$ a trojúhelníku $E F G$ ve středové souměrnosti se středem $S$. Obrazy označ $A'$, $B'$, $C'$, $D'$ a $E'$, $F'$, $G'$.

#v(1fr)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    // --- 1. ČTVEREC ABCD ---
    line((-6, 1), (-4, 2), stroke: 1.2pt)
    line((-4, 2), (-3, 0), stroke: 1.2pt)
    line((-3, 0), (-5, -1), stroke: 1.2pt)
    line((-5, -1), (-6, 1), stroke: 1.2pt)

    circle((-6, 1), radius: 0.05, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-4, 2), radius: 0.05, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-3, 0), radius: 0.05, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-5, -1), radius: 0.05, fill: rgb("#5577ff"), stroke: 0.5pt)

    content((-6.3, 1.25), [$A$])
    content((-4.3, 2.25), [$B$])
    content((-2.7, -0.2), [$C$])
    content((-5.2, -1.3), [$D$])

    // --- 2. TROJÚHELNÍK EFG ---
    line((0, -2), (4, -1.5), stroke: 1.2pt)
    line((4, -1.5), (3, -3.5), stroke: 1.2pt)
    line((3, -3.5), (0, -2), stroke: 1.2pt)

    circle((0, -2), radius: 0.05, fill: rgb("#2a9d8f"), stroke: 0.5pt)
    circle((4, -1.5), radius: 0.05, fill: rgb("#2a9d8f"), stroke: 0.5pt)
    circle((3, -3.5), radius: 0.05, fill: rgb("#2a9d8f"), stroke: 0.5pt)

    content((-0.3, -2.05), [$E$])
    content((4.3, -1.45), [$F$])
    content((3.0, -3.85), [$G$])

    // --- 3. STŘED SOUMĚRNOSTI S ---
    circle((0, 1), radius: 0.05, fill: rgb("#e76f51"), stroke: 0.5pt)
    content((0.15, 1.35), [$S$])
  })
]

#v(1cm)

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
