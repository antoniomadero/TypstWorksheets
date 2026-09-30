#set page(paper: "a4", margin: (x: 2cm, y: 0.5cm), flipped: true)
#set text(size: 13pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)



#let priklad(a, b) = pad(x: 1cm, table(
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
  column-gutter: 3cm,

  [
    == Vypočítej:
    #set text(size: 1.2em, tracking: 0.08em)
    #v(1em)
    #grid(
      columns: 2,
      gutter: 1fr,
      [
        #priklad("2865", "· 17")
        #v(1fr)

        #priklad("7432", "· 26")
        #v(1fr)

        #priklad("5184", "· 32")
        #v(1fr)
      ],
      [
        #priklad("9361", "· 14")
        #v(1fr)

        #priklad("4075", "· 48")
        #v(1fr)

        #priklad("6723", "· 35")
        #v(1fr)
      ],
    )

  ],
  [
    == Vypočítej:
    #set text(size: 1.2em, tracking: 0.08em)
    #v(1em)
    #grid(
      columns: 2,
      gutter: 1fr,
      [
        #priklad("2865", "· 17")
        #v(1fr)

        #priklad("7432", "· 26")
        #v(1fr)

        #priklad("5184", "· 32")
        #v(1fr)
      ],
      [
        #priklad("9361", "· 14")
        #v(1fr)

        #priklad("4075", "· 48")
        #v(1fr)

        #priklad("6723", "· 35")
        #v(1fr)
      ],
    )

  ],
),
