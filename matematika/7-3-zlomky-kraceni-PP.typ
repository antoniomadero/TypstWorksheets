#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 0.18cm)

#let max-body = 20

#let jednicka-od = calc.round(max-body * 0.91)
#let dvojka-od = calc.round(max-body * 0.75)
#let trojka-od = calc.round(max-body * 0.4)
#let ctyrka-od = calc.round(max-body * 0.25)

#let answer = $frac(quad, quad)$

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
    Zkraťte zlomky na základní tvar. Každá úloha je za 1 bod.
    #set text(size: 16pt, lang: "cs")
    #columns(2)[
      #set enum(spacing: 1.2cm)
      + $frac(18, 24) = #answer$
      + $frac(21, 35) = #answer$
      + $frac(42, 56) = #answer$
      + $frac(36, 60) = #answer$
      + $frac(45, 75) = #answer$
      + $frac(28, 49) = #answer$
      + $frac(54, 72) = #answer$
      + $frac(63, 81) = #answer$
      + $frac(80, 100) = #answer$
      + $frac(66, 99) = #answer$
      #colbreak()
      11. $frac(48, 84) = #answer$
      + $frac(72, 90) = #answer$
      + $frac(96, 120) = #answer$
      + $frac(105, 140) = #answer$
      + $frac(88, 121) = #answer$
      + $frac(39, 42) = #answer$
      + $frac(144, 180) = #answer$
      + $frac(150, 210) = #answer$
      + $frac(91, 98) = #answer$
      + $frac(168, 224) = #answer$
    ]
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    Zkraťte zlomky na základní tvar. Každá úloha je za 1 bod.
    #set text(size: 16pt, lang: "cs")
    #set enum(spacing: 1.2cm)
    #columns(2)[
      + $frac(20, 30) = #answer$
      + $frac(24, 40) = #answer$
      + $frac(32, 48) = #answer$
      + $frac(35, 55) = #answer$
      + $frac(40, 64) = #answer$
      + $frac(45, 63) = #answer$
      + $frac(56, 80) = #answer$
      + $frac(70, 90) = #answer$
      + $frac(75, 105) = #answer$
      + $frac(84, 126) = #answer$
      #colbreak()
      11. $frac(90, 120) = #answer$
      + $frac(100, 140) = #answer$
      + $frac(108, 144) = #answer$
      + $frac(112, 160) = #answer$
      + $frac(120, 168) = #answer$
      + $frac(18, 81) = #answer$
      + $frac(135, 180) = #answer$
      + $frac(78, 84) = #answer$
      + $frac(156, 210) = #answer$
      + $frac(180, 240) = #answer$
    ]
  ]),
)
