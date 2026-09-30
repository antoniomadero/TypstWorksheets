#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let max-body = 8

#let jednicka-od = calc.round(max-body * 0.90)
#let dvojka-od = calc.round(max-body * 0.75)
#let trojka-od = calc.round(max-body * 0.4)
#let ctyrka-od = calc.round(max-body * 0.25)

#let variant-box(title: "Varianta A", body) = {
  block(
    width: 100%,
    inset: 10pt,
    radius: 5pt,
    fill: rgb("#e2e2e2"),
  )[
    *Jméno a příjmení:  #h(3fr) Body: #h(1fr) Známka: #h(1fr) *

    #align(center)[
      #text(weight: "bold", size: 12pt)[#title]
    ]
  ]

  v(1em)
  body

  block(
    radius: 5pt,
    clip: true,
    stroke: 1pt + gray,
    fill: rgb("#eeeeee"),
  )[
    #text(size: 6pt)[
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
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5cm,

  variant-box(title: "Písemná práce – Varianta A", [

    *1. Násobení desetinných čísel:*

    #enum(
      [$4,6 dot 2,5 =$ ],
      [$0,84 dot 3,2 =$ ],
      [$21,4 dot 0,04 =$],
      [$18,25 dot 0,24 =$],
    )
    #v(2.5em)

    *2. Dělení desetinných čísel:*

    #set enum(spacing: 2cm)
    #enum(
      [$15,6 : 2,4 =$ ],
      [$7,35 : 0,5 =$ ],
      [$0,98 : 0,3 =$ ],
      [$376,48 : 1,2 =$ ],
    )
    #v(1fr)
  ]),
  variant-box(title: "Písemná práce – Varianta B", [

    *1. Násobení desetinných čísel:*

    #enum(
      [$3,2 dot 1,5 =$ ],
      [$0,72 dot 4,5 =$ ],
      [$12,5 dot 0,08 =$],
      [$24,06 dot 0,3 =$],
    )
    #v(2.5em)

    *2. Dělení desetinných čísel:*

    #set enum(spacing: 2cm)
    #enum(
      [$18,9 : 2,7 =$ ],
      [$6,48 : 0,8 =$ ],
      [$42,84 : 1,2 =$],
      [$0,96 : 0,04 =$],
    )
    #v(1fr)
  ]),
)
