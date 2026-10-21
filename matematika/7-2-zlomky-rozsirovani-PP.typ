#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
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
    Rozšiřte zlomky uvedeným číslem. Každá úloha je za 1 bod.
    #set enum(spacing: 1.3cm)
    + $frac(2, 5)$ číslem 3 =
    + $frac(3, 7)$ číslem 4 =
    + $frac(5, 8)$ číslem 6 =
    + $frac(4, 9)$ číslem 5 =

    Rozšiřte zlomky na uvedeného jmenovatele.
    + $frac(3, 4)$ na jmenovatele 20 =
    + $frac(5, 6)$ na jmenovatele 42 =
    + $frac(7, 10)$ na jmenovatele 50 =
    + $frac(2, 9)$ na jmenovatele 63 =
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    Rozšiřte zlomky uvedeným číslem. Každá úloha je za 1 bod.
    #set enum(spacing: 1.3cm)
    + $frac(3, 8)$ číslem 4 =
    + $frac(4, 11)$ číslem 5 =
    + $frac(5, 12)$ číslem 3 =
    + $frac(7, 15)$ číslem 6 =

    Rozšiřte zlomky na uvedeného jmenovatele.
    + $frac(4, 7)$ na jmenovatele 35 =
    + $frac(3, 8)$ na jmenovatele 56 =
    + $frac(5, 9)$ na jmenovatele 45 =
    + $frac(7, 10)$ na jmenovatele 70 =
  ]),
)
