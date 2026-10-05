#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 12pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

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
    *1. Převeď jednotky délky:*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 3 km = #h(3cm)m #linebreak()
        #v(0.5cm)
        b) 48 m = #h(3cm)dm #linebreak()
        #v(0.5cm)
        c) 620 cm = #h(3cm) dm #linebreak()
        #v(0.5cm)
        d) 9 000 mm = #h(3cm) m #linebreak()
        #v(0.5cm)
        e) 7 dm = #h(3cm) cm
        #v(0.5cm)
      ],
      [
        f) 5 km = #h(3cm) m #linebreak()
        #v(0.5cm)
        g) 360 cm = #h(3cm) m #linebreak()
        #v(0.5cm)
        h) 42 m = #h(3cm) cm #linebreak()
        #v(0.5cm)
        i) 8 000 mm = #h(3cm) m #linebreak()
        #v(0.5cm)
        j) 6 dm = #h(3cm) mm
        #v(0.5cm)
      ],
    )

    *2. Převeď jednotky hmotnosti:*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 3 t = #h(3cm) kg #linebreak()
        #v(0.5cm)
        b) 4 500 kg = #h(3cm) t #linebreak()
        #v(0.5cm)
        c) 7 kg = #h(3cm) g #linebreak()
        #v(0.5cm)
        d) 26 000 g = #h(3cm) kg #linebreak()
        #v(0.5cm)
        e) 8 000 kg = #h(3cm) t
        #v(0.5cm)
      ],
      [
        f) 5 t = #h(3cm) kg #linebreak()
        #v(0.5cm)
        g) 6 000 g = #h(3cm) kg #linebreak()
        #v(0.5cm)
        h) 12 kg = #h(3cm) g #linebreak()
        #v(0.5cm)
        i) 9 t = #h(3cm) kg #linebreak()
        #v(0.5cm)
        j) 42 000 g = #h(3cm) kg
        #v(0.5cm)
      ],
    )
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    *1. Převeď jednotky délky:*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 5 km = #h(3cm) m #linebreak()
        #v(0.5cm)
        b) 63 m = #h(3cm) dm #linebreak()
        #v(0.5cm)
        c) 840 cm = #h(3cm) dm #linebreak()
        #v(0.5cm)
        d) 12 000 mm = #h(3cm) m #linebreak()
        #v(0.5cm)
        e) 9 dm = #h(3cm) cm
        #v(0.5cm)
      ],
      [
        f) 7 km = #h(3cm) m #linebreak()
        #v(0.5cm)
        g) 480 cm = #h(3cm) m #linebreak()
        #v(0.5cm)
        h) 56 m = #h(3cm) cm #linebreak()
        #v(0.5cm)
        i) 6 000 mm = #h(3cm) m #linebreak()
        #v(0.5cm)
        j) 4 dm = #h(3cm) mm
        #v(0.5cm)
      ],
    )

    *2. Převeď jednotky hmotnosti:*
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.5cm,
      [
        a) 6 t = #h(3cm) kg #linebreak()
        #v(0.5cm)
        b) 8 000 kg = #h(3cm) t #linebreak()
        #v(0.5cm)
        c) 9 kg = #h(3cm) g #linebreak()
        #v(0.5cm)
        d) 35 000 g = #h(3cm) kg #linebreak()
        #v(0.5cm)
        e) 7 000 kg = #h(3cm) t
        #v(0.5cm)
      ],
      [
        f) 4 t = #h(3cm) kg #linebreak()
        #v(0.5cm)
        g) 8 000 g = #h(3cm) kg #linebreak()
        #v(0.5cm)
        h) 15 kg = #h(3cm) g #linebreak()
        #v(0.5cm)
        i) 7 t = #h(3cm) kg #linebreak()
        #v(0.5cm)
        j) 56 000 g = #h(3cm) kg
        #v(0.5cm)
      ],
    )
  ]),
)
