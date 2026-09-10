#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let variant-box(title: "Varianta A", body) = {
  block(width: 100%, height: 2em + 35pt, inset: 15pt, radius: 5pt, fill: rgb("#e2e2e2"))[
    *Jméno a příjmení:  #h(1fr) Body: #h(1fr) Známka: #h(1fr) *
    #align(center)[#text(weight: "bold", size: 12pt)[#title]]

    #body
  ]
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5cm,

  variant-box(title: "Písemná práce – Varianta A", [
    #v(0.2em)
    *Vypočítej sčítání a odčítání desetinných čísel:*
    #v(-0.1em)
    #enum(
      [$12,45 + 3,8 =$ ],
      [$56,2 - 14,75 =$ ],
      [$7,89 + 0,56 =$ ],
      [$23,4 - 5,67 =$ ],
      [$1,234 + 2,345 =$ ],
      [$34,5 - 12,78 =$ ],
      [$9,876 + 0,123 =$ ],
      [$45,6 - 23,45 =$ ],
      [$3,21 + 4,56 =$ ],
      [$67,89 - 34,56 =$ ],
    )
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    #v(0.2em)
    *Vypočítej sčítání a odčítání desetinných čísel:*
    #v(-0.1em)
    #enum(
      [$15,34 + 4,7 =$ ],
      [$63,1 - 12,45 =$ ],
      [$4,06 + 112,5 =$ ],
      [$80,2 - 34,71 =$ ],
      [$0,345 + 2,78 =$ ],
      [$14,2 - 5,63 =$ ],
      [$87,3 + 1,94 =$ ],
      [$54,6 - 13,24 =$ ],
      [$6,78 + 4,52 =$ ],
      [$43,5 - 18,22 =$ ],
    )
  ]),
)

