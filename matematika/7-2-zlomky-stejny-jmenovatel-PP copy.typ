#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 10pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.6cm)

#let max-body = 16

#let jednicka-od = calc.round(max-body * 0.91)
#let dvojka-od = calc.round(max-body * 0.75)
#let trojka-od = calc.round(max-body * 0.4)
#let ctyrka-od = calc.round(max-body * 0.25)

#let answer = $frac(quad quad, quad quad)$

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

  v(0.5em)
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
    Upravte oba zlomky na nejmenšího společného jmenovatele. Zapište oba rozšířené zlomky. Každá úloha je za 1 bod.
    #columns(2)[
      #set text(size: 16pt, lang: "cs")
      + $frac(2, 3) quad frac(1, 4) = quad #answer quad #answer$
      + $frac(3, 5) quad frac(2, 7) = quad #answer quad #answer$
      + $frac(5, 6) quad frac(3, 8) = quad #answer quad #answer$
      + $frac(2, 9) quad frac(4, 15) = quad #answer quad #answer$
      + $frac(3, 10) quad frac(5, 12) = quad #answer quad #answer$
      + $frac(4, 7) quad frac(2, 5) = quad #answer quad #answer$
      + $frac(5, 8) quad frac(1, 6) = quad #answer quad #answer$
      + $frac(7, 12) quad frac(3, 20) = quad #answer quad #answer$
      #colbreak()
      9. $frac(2, 11) quad frac(3, 4) = quad #answer quad #answer$
      + $frac(5, 9) quad frac(7, 12) = quad #answer quad #answer$
      + $frac(3, 14) quad frac(5, 21) = quad #answer quad #answer$
      + $frac(4, 15) quad frac(7, 10) = quad #answer quad #answer$
      + $frac(5, 16) quad frac(3, 12) = quad #answer quad #answer$
      + $frac(1, 18) quad frac(5, 24) = quad #answer quad #answer$
      + $frac(7, 20) quad frac(2, 25) = quad #answer quad #answer$
      + $frac(5, 21) quad frac(4, 28) = quad #answer quad #answer$
    ]

  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    Upravte oba zlomky na nejmenšího společného jmenovatele. Zapište oba rozšířené zlomky. Každá úloha je za 1 bod.
    #columns(2)[
      #set text(size: 16pt, lang: "cs")
      + $frac(5, 7) quad frac(2, 3) = quad #answer quad #answer$
      + $frac(1, 4) quad frac(3, 10) = quad #answer quad #answer$
      + $frac(5, 9) quad frac(2, 15) = quad #answer quad #answer$
      + $frac(3, 8) quad frac(4, 11) = quad #answer quad #answer$
      + $frac(7, 12) quad frac(1, 9) = quad #answer quad #answer$
      + $frac(5, 14) quad frac(3, 7) = quad #answer quad #answer$
      + $frac(2, 5) quad frac(7, 12) = quad #answer quad #answer$
      + $frac(4, 9) quad frac(5, 18) = quad #answer quad #answer$
      #colbreak()
      9. $frac(3, 16) quad frac(5, 20) = quad #answer quad #answer$
      + $frac(7, 15) quad frac(2, 9) = quad #answer quad #answer$
      + $frac(5, 18) quad frac(3, 8) = quad #answer quad #answer$
      + $frac(2, 13) quad frac(5, 6) = quad #answer quad #answer$
      + $frac(7, 10) quad frac(1, 16) = quad #answer quad #answer$
      + $frac(5, 24) quad frac(3, 14) = quad #answer quad #answer$
      + $frac(2, 21) quad frac(5, 12) = quad #answer quad #answer$
      + $frac(7, 25) quad frac(3, 20) = quad #answer quad #answer$
    ]
  ]),
)
