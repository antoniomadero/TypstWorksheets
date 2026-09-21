#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 13pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let max-body = 8

#let jednicka-od = calc.round(max-body * 0.91)
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

#let priklad(a, b) = pad(x: 1cm, table(
  columns: 1,

  align: right,
  inset: 0pt,
  stroke: (x, y) => if y == 3 {
    (bottom: 1pt)
  },
  [#text(tracking: 0.06em)[#a]],
  [#v(0.5em)],
  [#text(tracking: 0.06em)[#b]],
  [#v(0.5em)],
))

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5cm,

  variant-box(title: "Písemná práce – Varianta A", [
    == Vypočítej:
    #v(1em)
    #grid(
      columns: 2,
      gutter: 1fr,
      [
        #priklad("28654", "+17328")
        #v(1fr)

        #priklad("765432", "-321098")
        #v(1fr)

        #priklad("543210", "+123789")
        #v(1fr)
      ],
      [
        #align(right)[
          $456123$ \
          $+321654$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $999999$ \
          $-456123$
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $312456$ \
          $+487321$
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $740500$ \
          $-128765$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
      ],
    )

  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    == Vypočítej:
    #v(1em)

    #grid(
      columns: 2,
      gutter: 1fr,
      [
        #align(right)[
          $345678$ \
          $+123456$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $807205$ \
          $-246318$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $456789$ \
          $+212111$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $900000$ \
          $-345678$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
      ],
      [
        #align(right)[
          $123456$ \
          $+654321$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $700000$ \
          $-123456$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $234567$ \
          $+345678$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
        #align(right)[
          $987654$ \
          $-456789$ \
          #line(length: 2.8cm)
        ]
        #v(2cm)
      ],
    )
  ]),
)
