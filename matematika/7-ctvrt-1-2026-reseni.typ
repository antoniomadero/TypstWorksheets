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

#align(center)[= 1. čtvrtletní písemná práce / 7. ročník – A #res[(ŘEŠENÍ)]]

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
  [ $ 3/4 #res[$<$] 5/6 $ \ #res[$ 9/12 < 10/12 $] ], [ $ 5/8 #res[$>$] 7/12 $ \ #res[$ 15/24 > 14/24 $] ],
  v(1.5em), v(1.5em),
  [ $ 7/9 #res[$<$] 5/6 $ \ #res[$ 14/18 < 15/18 $] ], [ $ 4/7 #res[$<$] 3/5 $ \ #res[$ 20/35 < 21/35 $] ],
  v(1.5em), v(1.5em),
)

#v(3mm)

#uloha("2", "Zkrať zlomky na základní tvar", body-uloh.at(1))
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align: left,
  column-gutter: 4mm,
  [$ 18/30 = #res[$3/5$] $], [$ 42/56 = #res[$3/4$] $], [$ 30/75 = #res[$2/5$] $], [$ 63/81 = #res[$7/9$] $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 24/42 = #res[$4/7$] $], [$ 54/63 = #res[$6/7$] $], [$ 32/48 = #res[$2/3$] $], [$ 48/108 = #res[$4/9$] $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 35/56 = #res[$5/8$] $], [$ 24/64 = #res[$3/8$] $], [$ 36/84 = #res[$3/7$] $], [$ 65/91 = #res[$5/7$] $],
  v(2em), v(2em), v(2em), v(2em),
  [$ 55/66 = #res[$5/6$] $], [$ 48/60 = #res[$4/5$] $], [$ 35/63 = #res[$5/9$] $], [$ 99/121 = #res[$9/11$] $],
)

#v(3cm)

#uloha("3", "Sečti a odečti zlomky", body-uloh.at(2))

#grid(
  columns: (auto, auto, auto, auto),
  align: left,
  column-gutter: 2.2cm,
  [$ 3/11 + 5/11 = #res[$8/11$] $ \
    $ 5/6 + 1/3 = #res[$7/6 = 1 1/6$] $],
  [$ 9/13 - 4/13 = #res[$5/13$] $ \
    $ 7/10 - 2/5 = #res[$3/10$] $],
  [$ 2/7 + 3/7 = #res[$5/7$] $ \
    $ 3/8 + 1/4 = #res[$5/8$] $],
  [$ 11/15 - 2/15 = #res[$9/15 = 3/5$] $ \
    $ 11/12 - 1/3 = #res[$7/12$] $],
)


#pagebreak()
#uloha("4", "Sečti a odečti zlomky – výsledek uveď v základním tvaru", body-uloh.at(3))
U každého příkladu ukaž postup. Za správný postup a výsledek v základním tvaru je 1 bod.
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
  [
    $ 5/6 - 7/15 = #res[$ (25 - 14)/30 = 11/30 $] $ \
    $ 1/6 + 7/10 = #res[$ (5 + 21)/30 = 26/30 = 13/15 $] $ \
    $ 7/10 + 11/15 = #res[$ (21 + 22)/30 = 43/30 = 1 13/30 $] $ \
    $ 5/12 - 7/20 = #res[$ (25 - 21)/60 = 4/60 = 1/15 $] $
  ],
  [
    $ 5/6 - 3/14 = #res[$ (35 - 9)/42 = 26/42 = 13/21 $] $ \
    $ 3/10 + 5/14 = #res[$ (21 + 25)/70 = 46/70 = 23/35 $] $ \
    $ 3/10 + 8/15 = #res[$ (9 + 16)/30 = 25/30 = 5/6 $] $ \
    $ 11/15 - 7/20 = #res[$ (44 - 21)/60 = 23/60 $] $
  ],
)

#v(15mm)

#uloha("5", "Zobraz ve středové souměrnosti", body-uloh.at(4))
Narýsuj obraz čtyřúhelníku $A B C D$ a trojúhelníku $E F G$ ve středové souměrnosti se středem $S$. Obrazy označ $A'$, $B'$, $C'$, $D'$ a $E'$, $F'$, $G'$.

#v(1fr)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    // --- POMOCNÉ SPOJNICE ---
    line((-6, 1), (6, 1), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-4, 2), (4, 0), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-3, 0), (3, 2), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((-5, -1), (5, 3), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))

    line((0, -2), (0, 4), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((4, -1.5), (-4, 3.5), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))
    line((3, -3.5), (-3, 5.5), stroke: (paint: gray, thickness: 0.4pt, dash: "dashed"))

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

    // --- OBRAZ ČTVERCE A'B'C'D' (červeně) ---
    line((6, 1), (4, 0), stroke: (paint: red, thickness: 1.2pt))
    line((4, 0), (3, 2), stroke: (paint: red, thickness: 1.2pt))
    line((3, 2), (5, 3), stroke: (paint: red, thickness: 1.2pt))
    line((5, 3), (6, 1), stroke: (paint: red, thickness: 1.2pt))

    circle((6, 1), radius: 0.05, fill: red, stroke: 0.5pt)
    circle((4, 0), radius: 0.05, fill: red, stroke: 0.5pt)
    circle((3, 2), radius: 0.05, fill: red, stroke: 0.5pt)
    circle((5, 3), radius: 0.05, fill: red, stroke: 0.5pt)

    content((6.35, 1.0), text(fill: red)[$A'$])
    content((4.1, -0.35), text(fill: red)[$B'$])
    content((2.65, 2.2), text(fill: red)[$C'$])
    content((5.2, 3.3), text(fill: red)[$D'$])

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

    // --- OBRAZ TROJÚHELNÍKU E'F'G' (červeně) ---
    line((0, 4), (-4, 3.5), stroke: (paint: red, thickness: 1.2pt))
    line((-4, 3.5), (-3, 5.5), stroke: (paint: red, thickness: 1.2pt))
    line((-3, 5.5), (0, 4), stroke: (paint: red, thickness: 1.2pt))

    circle((0, 4), radius: 0.05, fill: red, stroke: 0.5pt)
    circle((-4, 3.5), radius: 0.05, fill: red, stroke: 0.5pt)
    circle((-3, 5.5), radius: 0.05, fill: red, stroke: 0.5pt)

    content((0.35, 4.05), text(fill: red)[$E'$])
    content((-4.35, 3.5), text(fill: red)[$F'$])
    content((-3.0, 5.85), text(fill: red)[$G'$])

    // --- 3. STŘED SOUMĚRNOSTI S ---
    circle((0, 1), radius: 0.05, fill: rgb("#e76f51"), stroke: 0.5pt)
    content((0.2, 1.3), [$S$])
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
