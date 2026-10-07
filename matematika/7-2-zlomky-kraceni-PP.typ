#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let max-body = 10

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
  v(1fr)
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
    Vypočítej a zkrať zlomek na základní tvar. Za každý správný výsledek 1 bod.

    + $frac(8, 12)$ =
    + $frac(9, 15)$ =
    + $frac(12, 20)$ =
    + $frac(16, 24)$ =
    + $frac(15, 35)$ =
    + $frac(21, 28)$ =
    + $frac(18, 27)$ =
    + $frac(14, 49)$ =
    + $frac(24, 36)$ =
    + $frac(25, 40)$ =
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    Vypočítej a zkrať zlomek na základní tvar. Za každý správný výsledek 1 bod.

    + $frac(8, 12)$ =
    + $frac(9, 15)$ =
    + $frac(12, 20)$ =
    + $frac(16, 24)$ =
    + $frac(15, 35)$ =
    + $frac(21, 28)$ =
    + $frac(18, 27)$ =
    + $frac(14, 49)$ =
    + $frac(24, 36)$ =
    + $frac(25, 40)$ =
  ]),
)


