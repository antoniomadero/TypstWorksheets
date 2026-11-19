#set page(paper: "a4", margin: (x: 1.2cm, y: 0.8cm))
#set text(size: 13pt, lang: "cs")
#set par(leading: 0.55em)
#set enum(numbering: "a)", spacing: 3em)
#import "@preview/cetz:0.5.3"

#align(center)[
  #text(size: 16pt, weight: "bold")[Opakování: zlomky a středová souměrnost]


]

#v(0.35em)


#v(0.5em)
*1. Zkrať zlomky na základní tvar.*

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 1em,
  row-gutter: 0.25em,
  [
    + $24/36 =$
    + $30/45 =$
    + $36/54 =$
  ],
  [
    4. $42/56 =$
    + $48/64 =$
    + $54/72 =$
  ],
  [
    7. $56/72 =$
    + $60/80 =$
    + $66/88 =$
  ],
  [
    10. $63/81 =$
    + $72/96 =$
    + $81/108 =$
  ],
)

#v(0.45em)
*2. Sečti nebo odečti. Najdi společného jmenovatele a výsledek zkrať.*
#text(size: 16pt)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    row-gutter: 0.25em,
    [
      + $2/3 + 5/12 =$
      + $3/4 - 1/6 =$
      + $5/8 + 1/4 =$
      + $7/10 - 3/5 =$

    ],
    [
      5. $3/9 - 1/6 =$
      + $4/5 + 2/15 =$
      + $7/12 - 1/3 =$
      + $9/14 + 5/7 =$
    ],
  )]

#v(0.45em)
*3. Sestroj obraz trojúhelníku $A B C$ ve středové souměrnosti se středem $S$.*

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    for x in range(-5, 6) {
      line((x, -4), (x, 4), stroke: (paint: rgb("#dddddd"), thickness: 0.4pt))
    }
    for y in range(-4, 5) {
      line((-5, y), (5, y), stroke: (paint: rgb("#dddddd"), thickness: 0.4pt))
    }
    line((-5, 0), (5, 0), stroke: (paint: rgb("#888888"), thickness: 0.8pt))
    line((0, -4), (0, 4), stroke: (paint: rgb("#888888"), thickness: 0.8pt))

    line((-4, 1), (-3, 3), stroke: (paint: rgb("#1d3557"), thickness: 1.5pt))
    line((-3, 3), (-2, 1), stroke: (paint: rgb("#1d3557"), thickness: 1.5pt))
    line((-2, 1), (-4, 1), stroke: (paint: rgb("#1d3557"), thickness: 1.5pt))

    circle((-4, 1), radius: 0.07, fill: rgb("#1d3557"), stroke: 0.5pt)
    circle((-3, 3), radius: 0.07, fill: rgb("#1d3557"), stroke: 0.5pt)
    circle((-2, 1), radius: 0.07, fill: rgb("#1d3557"), stroke: 0.5pt)
    circle((0, 0), radius: 0.1, fill: rgb("#e76f51"), stroke: 0.5pt)
    content((-4.35, 1.2), [$A$])
    content((-3.15, 3.2), [$B$])
    content((-1.75, 1.2), [$C$])
    content((0.15, 0.15), [$S$])
  })
]

#v(0.25em)
*Kontrola:* Leží $S$ uprostřed mezi každým vrcholem a jeho obrazem? #line(length: 3cm)
