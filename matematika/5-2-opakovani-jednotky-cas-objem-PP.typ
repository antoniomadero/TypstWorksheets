#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 12pt, lang: "cs")

#let max-body = 20

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
    *1. Převeď jednotky času (10 bodů):*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 3 min = #h(2cm) s #linebreak()
        #v(0.5cm)
        b) 240 s = #h(2cm) min #linebreak()
        #v(0.5cm)
        c) 2 h = #h(2cm) min #linebreak()
        #v(0.5cm)
        d) 180 min = #h(2cm) h #linebreak()
        #v(0.5cm)
        e) 4 dny = #h(2cm) h
      ],
      [
        f) 72 h = #h(2cm) dny #linebreak()
        #v(0.5cm)
        g) 125 min = #h(1cm) h #h(1cm) min #linebreak()
        #v(0.5cm)
        h) 2 h 35 min = #h(2cm) min #linebreak()
        #v(0.5cm)
        i) 5 400 s = #h(1cm) h #h(1cm) min #linebreak()
        #v(0.5cm)
        j) 3 dny 6 h = #h(2cm) h
      ],
    )

    #v(1fr)
    *2. Převeď jednotky objemu (10 bodů):*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 4 hl = #h(2cm) l #linebreak()
        #v(0.5cm)
        b) 700 l = #h(2cm) hl #linebreak()
        #v(0.5cm)
        c) 6 l = #h(2cm) ml #linebreak()
        #v(0.5cm)
        d) 8 500 ml = #h(1cm) l #h(1cm) ml #linebreak()
        #v(0.5cm)
        e) 12 hl = #h(2cm) l
      ],
      [
        f) 3 hl = #h(2cm) l #linebreak()
        #v(0.5cm)
        g) 900 l = #h(2cm) hl #linebreak()
        #v(0.5cm)
        h) 14 l = #h(2cm) ml #linebreak()
        #v(0.5cm)
        i) 6 300 ml = #h(1cm) l #h(1cm) ml #linebreak()
        #v(0.5cm)
        j) 2 hl 35 l = #h(2cm) l
      ],
    )
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    *1. Převeď jednotky času (10 bodů):*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 5 min = #h(2cm) s #linebreak()
        #v(0.5cm)
        b) 420 s = #h(2cm) min #linebreak()
        #v(0.5cm)
        c) 3 h = #h(2cm) min #linebreak()
        #v(0.5cm)
        d) 360 min = #h(2cm) h #linebreak()
        #v(0.5cm)
        e) 2 dny = #h(2cm) h
      ],
      [
        f) 96 h = #h(2cm) dny #linebreak()
        #v(0.5cm)
        g) 145 min = #h(1cm) h #h(1cm) min #linebreak()
        #v(0.5cm)
        h) 3 h 25 min = #h(2cm) min #linebreak()
        #v(0.5cm)
        i) 7 200 s = #h(1cm) h #h(1cm) min #linebreak()
        #v(0.5cm)
        j) 2 dny 8 h = #h(2cm) h
      ],
    )

    #v(1fr)
    *2. Převeď jednotky objemu (10 bodů):*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 6 hl = #h(2cm) l #linebreak()
        #v(0.5cm)
        b) 900 l = #h(2cm) hl #linebreak()
        #v(0.5cm)
        c) 8 l = #h(2cm) ml #linebreak()
        #v(0.5cm)
        d) 7 400 ml = #h(1cm) l #h(1cm) ml #linebreak()
        #v(0.5cm)
        e) 15 hl = #h(2cm) l
      ],
      [
        f) 5 hl = #h(2cm) l #linebreak()
        #v(0.5cm)
        g) 800 l = #h(2cm) hl #linebreak()
        #v(0.5cm)
        h) 17 l = #h(2cm) ml #linebreak()
        #v(0.5cm)
        i) 5 600 ml = #h(1cm) l #h(1cm) ml #linebreak()
        #v(0.5cm)
        j) 3 hl 24 l = #h(2cm) l
      ],
    )
  ]),
)
