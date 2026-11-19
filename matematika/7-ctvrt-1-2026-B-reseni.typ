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

#let res(obsah) = text(fill: red, weight: "bold")[#obsah]

#align(center)[= 1. čtvrtletní písemná práce / 7. ročník – B #res[(ŘEŠENÍ)]]

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
  [ $ 2/3 #res[$>$] 5/8 $ \ #res[$ 16/24 > 15/24 $] ], [ $ 7/10 #res[$<$] 11/15 $ \ #res[$ 21/30 < 22/30 $] ],
  v(1.5em), v(1.5em),
  [ $ 5/8 #res[$>$] 7/12 $ \ #res[$ 15/24 > 14/24 $] ], [ $ 3/4 #res[$>$] 5/7 $ \ #res[$ 21/28 > 20/28 $] ],
  v(1.5em), v(1.5em),
)

#v(3mm)

#uloha("2", "Zkrať zlomky na základní tvar", body-uloh.at(1))
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align: left,
  column-gutter: 4mm,
  [$ 24/36 = #res[$2/3$] $], [$ 35/49 = #res[$5/7$] $], [$ 45/75 = #res[$3/5$] $], [$ 54/72 = #res[$3/4$] $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 28/42 = #res[$2/3$] $], [$ 48/56 = #res[$6/7$] $], [$ 36/54 = #res[$2/3$] $], [$ 72/108 = #res[$2/3$] $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 45/63 = #res[$5/7$] $], [$ 32/80 = #res[$2/5$] $], [$ 42/98 = #res[$3/7$] $], [$ 52/91 = #res[$4/7$] $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 44/55 = #res[$4/5$] $], [$ 36/48 = #res[$3/4$] $], [$ 42/63 = #res[$2/3$] $], [$ 88/121 = #res[$8/11$] $],
)

#v(3cm)

#uloha("3", "Sečti a odečti zlomky", body-uloh.at(2))

#grid(
  columns: (auto, auto, auto, auto),
  align: left,
  column-gutter: 2.2cm,
  [$ 4/9 + 3/9 = #res[$7/9$] $ \
    $ 3/4 + 1/8 = #res[$7/8$] $],
  [$ 11/15 - 4/15 = #res[$7/15$] $ \
    $ 5/6 - 1/2 = #res[$2/6 = 1/3$] $],
  [$ 3/8 + 2/8 = #res[$5/8$] $ \
    $ 2/3 + 1/6 = #res[$5/6$] $],
  [$ 9/10 - 2/10 = #res[$7/10$] $ \
    $ 7/8 - 1/4 = #res[$5/8$] $],
)


#pagebreak()
#uloha("4", "Sečti a odečti zlomky – výsledek uveď v základním tvaru", body-uloh.at(3))
U každého příkladu ukaž postup. Za správný postup a výsledek v základním tvaru je 1 bod.
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
  [
    $ 7/10 + 4/15 = #res[$ (21 + 8)/30 = 29/30 $] $ \
    $ 5/6 + 3/10 = #res[$ (25 + 9)/30 = 34/30 = 17/15 = 1 2/15 $] $ \
    $ 9/10 - 4/15 = #res[$ (27 - 8)/30 = 19/30 $] $ \
    $ 11/12 - 3/20 = #res[$ (55 - 9)/60 = 46/60 = 23/30 $] $
  ],
  [
    $ 7/12 + 5/18 = #res[$ (21 + 10)/36 = 31/36 $] $ \
    $ 7/10 + 3/14 = #res[$ (49 + 15)/70 = 64/70 = 32/35 $] $ \
    $ 7/10 - 2/15 = #res[$ (21 - 4)/30 = 17/30 $] $ \
    $ 13/15 - 3/20 = #res[$ (52 - 9)/60 = 43/60 $] $
  ],
)

#v(15mm)

#uloha("5", "Zobraz ve středové souměrnosti", body-uloh.at(4))
Narýsuj obraz čtyřúhelníku $A B C D$ a trojúhelníku $E F G$ ve středové souměrnosti se středem $S$. Obrazy označ $A'$, $B'$, $C'$, $D'$ a $E'$, $F'$, $G'$.

#v(5mm)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    // Pomocné spojnice (čtyřúhelník)
    line((-4.5, 1.5), (5.5, -0.9), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-3.5, 3.2), (4.5, -2.6), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-1.5, 2.5), (2.5, -1.9), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-2.5, 0.8), (3.5, -0.2), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))

    // Pomocné spojnice (trojúhelník)
    line((-4.0, -0.5), (5.0, 1.1), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-1.5, -0.8), (2.5, 1.4), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-3.0, -2.5), (4.0, 3.1), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))

    // Čtyřúhelník ABCD
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

    // Trojúhelník EFG
    line((-4.0, -0.5), (-1.5, -0.8), stroke: 1.2pt)
    line((-1.5, -0.8), (-3.0, -2.5), stroke: 1.2pt)
    line((-3.0, -2.5), (-4.0, -0.5), stroke: 1.2pt)

    circle((-4.0, -0.5), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-1.5, -0.8), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    circle((-3.0, -2.5), radius: 0.07, fill: rgb("#5577ff"), stroke: 0.5pt)
    content((-4.3, -0.4), [$E$])
    content((-1.2, -0.7), [$F$])
    content((-3.1, -2.85), [$G$])

    // Obraz A'B'C'D' (červeně)
    line((5.5, -0.9), (4.5, -2.6), stroke: (paint: red, thickness: 1.2pt))
    line((4.5, -2.6), (2.5, -1.9), stroke: (paint: red, thickness: 1.2pt))
    line((2.5, -1.9), (3.5, -0.2), stroke: (paint: red, thickness: 1.2pt))
    line((3.5, -0.2), (5.5, -0.9), stroke: (paint: red, thickness: 1.2pt))

    circle((5.5, -0.9), radius: 0.07, fill: red, stroke: 0.5pt)
    circle((4.5, -2.6), radius: 0.07, fill: red, stroke: 0.5pt)
    circle((2.5, -1.9), radius: 0.07, fill: red, stroke: 0.5pt)
    circle((3.5, -0.2), radius: 0.07, fill: red, stroke: 0.5pt)
    content((5.85, -0.95), text(fill: red)[$A'$])
    content((4.5, -2.95), text(fill: red)[$B'$])
    content((2.15, -2.05), text(fill: red)[$C'$])
    content((3.65, 0.15), text(fill: red)[$D'$])

    // Obraz E'F'G' (červeně)
    line((5.0, 1.1), (2.5, 1.4), stroke: (paint: red, thickness: 1.2pt))
    line((2.5, 1.4), (4.0, 3.1), stroke: (paint: red, thickness: 1.2pt))
    line((4.0, 3.1), (5.0, 1.1), stroke: (paint: red, thickness: 1.2pt))

    circle((5.0, 1.1), radius: 0.07, fill: red, stroke: 0.5pt)
    circle((2.5, 1.4), radius: 0.07, fill: red, stroke: 0.5pt)
    circle((4.0, 3.1), radius: 0.07, fill: red, stroke: 0.5pt)
    content((5.35, 1.05), text(fill: red)[$E'$])
    content((2.15, 1.45), text(fill: red)[$F'$])
    content((4.1, 3.45), text(fill: red)[$G'$])

    // Střed souměrnosti S
    circle((0.5, 0.3), radius: 0.09, fill: rgb("#e76f51"), stroke: 0.5pt)
    content((0.65, 0.65), [$S$])
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
