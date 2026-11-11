#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 0.18cm)

#let max-body = 20

#let jednicka-od = calc.round(max-body * 0.91)
#let dvojka-od = calc.round(max-body * 0.75)
#let trojka-od = calc.round(max-body * 0.4)
#let ctyrka-od = calc.round(max-body * 0.25)

#let answer(a, b) = text(fill: rgb("#c00000"))[$frac(#text(str(a)), #text(str(b)))$]

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
      + $frac(18, 24) = #answer(3, 4)$
      + $frac(21, 35) = #answer(3, 5)$
      + $frac(42, 56) = #answer(3, 4)$
      + $frac(36, 60) = #answer(3, 5)$
      + $frac(45, 75) = #answer(3, 5)$
      + $frac(28, 49) = #answer(4, 7)$
      + $frac(54, 72) = #answer(3, 4)$
      + $frac(63, 81) = #answer(7, 9)$
      + $frac(80, 100) = #answer(4, 5)$
      + $frac(66, 99) = #answer(2, 3)$
      #colbreak()
      11. $frac(48, 84) = #answer(4, 7)$
      + $frac(72, 90) = #answer(4, 5)$
      + $frac(96, 120) = #answer(4, 5)$
      + $frac(105, 140) = #answer(3, 4)$
      + $frac(88, 121) = #answer(8, 11)$
      + $frac(39, 42) = #answer(13, 14)$
      + $frac(144, 180) = #answer(4, 5)$
      + $frac(150, 210) = #answer(5, 7)$
      + $frac(91, 98) = #answer(13, 14)$
      + $frac(168, 224) = #answer(3, 4)$
    ]
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    Zkraťte zlomky na základní tvar. Každá úloha je za 1 bod.
    #set text(size: 16pt, lang: "cs")
    #set enum(spacing: 1.2cm)
    #columns(2)[
      + $frac(20, 30) = #answer(2, 3)$
      + $frac(24, 40) = #answer(3, 5)$
      + $frac(32, 48) = #answer(2, 3)$
      + $frac(35, 55) = #answer(7, 11)$
      + $frac(40, 64) = #answer(5, 8)$
      + $frac(45, 63) = #answer(5, 7)$
      + $frac(56, 80) = #answer(7, 10)$
      + $frac(70, 90) = #answer(7, 9)$
      + $frac(75, 105) = #answer(5, 7)$
      + $frac(84, 126) = #answer(2, 3)$
      #colbreak()
      11. $frac(90, 120) = #answer(3, 4)$
      + $frac(100, 140) = #answer(5, 7)$
      + $frac(108, 144) = #answer(3, 4)$
      + $frac(112, 160) = #answer(7, 10)$
      + $frac(120, 168) = #answer(5, 7)$
      + $frac(18, 81) = #answer(2, 9)$
      + $frac(135, 180) = #answer(3, 4)$
      + $frac(78, 84) = #answer(13, 14)$
      + $frac(156, 210) = #answer(26, 35)$
      + $frac(180, 240) = #answer(3, 4)$
    ]
  ]),
)
