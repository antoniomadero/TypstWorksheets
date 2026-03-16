
#let trojclenka(x1, y1, x2, y2, prima: true) = {
  let s1 = scale(x: 130%, y: 275%, origin: top)[$arrow.t$]
  let s2 = if prima { s1 } else { scale(x: 130%, y: 275%, origin: top)[$arrow.b$] }

  grid(
    columns: (5pt, auto, 5pt),
    column-gutter: 10pt,
    row-gutter: 1em,
    // První sloupec (šipka) zarovnáme nahoru (top)
    align: (top, center + horizon, top),

    // Levá šipka (zarovnaná nahoru)
    grid.cell(rowspan: 2)[#s1],

    // Obsah uprostřed (horní řádek)
    grid(
      columns: (auto, 40pt, auto),
      column-gutter: 5pt,
      [#x1], [......], [#y1],
    ),

    // Pravá šipka (zarovnaná nahoru)
    grid.cell(rowspan: 2)[#s2],

    // Obsah uprostřed (dolní řádek se souvislou čárou)
    grid.cell(stroke: (bottom: 1pt))[
      #grid(
        columns: (auto, 40pt, auto),
        column-gutter: 5pt,
        inset: (bottom: 4pt),
        [#x2], [......], [#y2],
      )
    ],
  )
}


#trojclenka("5 kg", "120 Kč", "8 kg", "x Kč")

#trojclenka("4 dělníci", "12 dní", "6 dělníků", "x dní", prima: false)


