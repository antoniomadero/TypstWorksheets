#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 6cm)

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
    #enum[
      Narýsuj úsečku $overline(A B)$ délky $7 "cm"$ a sestroj její střed $S$
      ($|A S| = |S B|$).
    ][
      Narýsuj $o$, pro kterou platí $o perp p$ a $O in o$. Poté narýsuj
      $m$, pro kterou platí $m parallel p$ a $O in m$.
      #image("images/5-geo-1.svg", width: 100%)
    ]
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    #enum[
      Narýsuj úsečku $overline(A B)$ délky $7 "cm"$ a sestroj její střed $S$
      ($|A S| = |S B|$).
    ][
      Narýsuj $o$, pro kterou platí $o perp p$ a $O in o$. Poté narýsuj
      $m$, pro kterou platí $m parallel p$ a $O in m$.
      #image("images/5-geo-1.svg", width: 100%)
    ]
  ]),
)
