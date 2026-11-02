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

  variant-box(title: "Vzájemná poloha přímek", [
    #enum[
      Narýsuj dvě rovnoběžky $a$ a $b$ a přímku $r$, která protíná obě. Průsečíky označ $P$ a $Q$

      *Platí:  $a parallel b quad a ∩ r = {P} quad b ∩ r = {Q} quad P ≠ Q$ *


    ][
      Narýsuj:\
      $o$ \
      $p perp o$ a $O in o$. \
      $m perp p$ a $M in m$.\
      $n$; $O in n ; M in n$.
      #image("images/kolmice-rovnobezka_2.svg", width: 100%)
    ]
  ]),
  variant-box(title: "Vzájemná poloha přímek", [
    #enum[
      Narýsuj dvě rovnoběžky $a$ a $b$ a přímku $r$, která protíná obě. Průsečíky označ $P$ a $Q$

      *Platí:  $a parallel b quad a ∩ r = {P} quad b ∩ r = {Q} quad P ≠ Q$ *
    ][
      Narýsuj:\
      $o$ \
      $p perp o$ a $O in o$. \
      $m perp p$ a $M in m$.\
      $n$; $O in n ; M in n$.
      #image("images/kolmice-rovnobezka_2.svg", width: 100%)
    ]
  ]),
)
