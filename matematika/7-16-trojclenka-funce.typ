#let trojclenka(x1, y1, x2, y2, prima: true) = context {
  let l = calc.max(measure([#x1]).width, measure([#x2]).width)
  let r = calc.max(measure([#y1]).width, measure([#y2]).width)
  let š = scale(x: 130%, y: 275%, origin: top)[$arrow.t$]
  let p = if prima { š } else { scale(x: 130%, y: 275%, origin: top)[$arrow.b$] }

  grid(
    columns: (5pt, auto, 5pt),
    column-gutter: 10pt,
    row-gutter: 1em,
    align: (top, center + horizon, top),
    grid.cell(rowspan: 2)[#š],
    grid(
      columns: (l, 25pt, r),
      column-gutter: 5pt,
      align: (left, center, right),
      [#x1], [..........], [#y1],
    ),
    grid.cell(rowspan: 2)[#p],
    grid.cell(stroke: (bottom: 1pt))[
      #grid(
        columns: (l, 25pt, r),
        column-gutter: 5pt,
        inset: (bottom: 4pt),
        align: (left, center, right),
        [#x2], [..........], [#y2],
      )
    ],
  )
}


#trojclenka(2, 3, 4, 6)          // prima = true (pravá šipka nahoru)
#trojclenka(2, 3, 4, 6, prima: false)  // pravá šipka dolů

#trojclenka("5 kg", "120 Kč", "8 kg", "x Kč")

#trojclenka("4 dělníci", "12 dní", "6 dělníků", "x dní", prima: false)
