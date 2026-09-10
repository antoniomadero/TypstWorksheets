#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let max-body = 8

#let jednicka-od = calc.ceil(max-body * 0.91)
#let dvojka-od = calc.ceil(max-body * 0.75)
#let trojka-od = calc.ceil(max-body * 0.4)
#let ctyrka-od = calc.ceil(max-body * 0.25)

#let variant-box(title: "Varianta A", body) = {
  block(
    width: 100%,
    inset: 10pt,
    radius: 5pt,
    fill: rgb("#e2e2e2"),
  )[
    *Jméno a příjmení:  #h(1fr) Body: #h(1fr) Známka: #h(1fr) *

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
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
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

    *1. Sčítání desetinných čísel:*

    #enum(
      [$12,45 + 3,8 =$ ],
      [$7,89 + 0,56 =$ ],
    )
    #v(1fr)
    *2. Odčítání desetinných čísel:*

    #enum(
      [$56,2 - 14,75 =$ ],
      [$23,4 - 5,67 =$ ],
    )
    #v(1fr)

    *3. Násobení desetinných čísel:*

    #enum(
      [$4,6 dot 2,5 =$ ],
      [$0,84 dot 3,2 =$ ],
    )
    #v(1fr)
    *4. Dělení desetinných čísel:*

    #enum(
      [$15,6 : 2,4 =$ ],
      [$7,35 : 0,5 =$ ],
    )
    #v(1fr)
  ]),
  variant-box(title: "Písemná práce – Varianta B", [

    *1. Sčítání desetinných čísel:*

    #enum(
      [$15,34 + 4,7 =$ ],
      [$4,06 + 112,5 =$ ],
    )
    #v(1fr)
    *2. Odčítání desetinných čísel:*

    #enum(
      [$63,1 - 12,45 =$ ],
      [$80,2 - 34,71 =$ ],
    )
    #v(1fr)
    *3. Násobení desetinných čísel:*

    #enum(
      [$3,8 dot 1,5 =$ ],
      [$0,72 dot 4,5 =$ ],
    )
    #v(1fr)
    *4. Dělení desetinných čísel:*

    #enum(
      [$18,9 : 2,7 =$ ],
      [$6,48 : 0,8 =$ ],
    )
    #v(1fr)
  ]),
)
