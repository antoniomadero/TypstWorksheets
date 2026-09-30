#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 13pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let max-body = 12
#let jednicka-od = calc.floor(max-body * 0.92)
#let dvojka-od = calc.floor(max-body * 0.75)
#let trojka-od = calc.floor(max-body * 0.45)
#let ctyrka-od = calc.floor(max-body * 0.25)

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

  body
  v(-2cm)
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

#let priklad(a, b) = pad(x: 2cm, table(
  columns: 1,

  align: right,
  inset: 0pt,
  stroke: (x, y) => if y == 3 {
    (bottom: 1pt)
  },

  [#text()[#a]],
  [#v(0.5em)],
  [#text()[#b]],
  [#v(0.5em)],
))

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5cm,

  variant-box(title: "Písemná práce – Varianta A", [
    * Vypočítej a u dělení proveď zkoušku: *
    #set text(size: 1.2em, tracking: 0.08em)
    #priklad("12865", "· 25")
    #v(1fr)

    #priklad("7432", "· 43")
    #v(1fr)

    15 234 : 3 =
    #v(1fr)
    256 904 : 6 =
    #v(2fr)


  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    * Vypočítej a u dělení proveď zkoušku: *
    #set text(size: 1.2em, tracking: 0.08em)
    #priklad("13942", "· 24")
    #v(1fr)
    #priklad("6851", "· 37")
    #v(1fr)

    18 456 : 4 =
    #v(1fr)
    372 816 : 8 =
    #v(2fr)

  ]),
)
