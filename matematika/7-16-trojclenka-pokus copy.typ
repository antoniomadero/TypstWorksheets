#let trojclenka(x1, y1, x2, y2, prima: true) = context {
  // ── měření maximálních šířek (teď v contextu) ──
  let šířka-levá = calc.max(measure([#x1]).width, measure([#x2]).width)
  let šířka-pravá = calc.max(measure([#y1]).width, measure([#y2]).width)

  let šipka-nahoru = scale(x: 130%, y: 275%, origin: top)[$arrow.t$]
  let pravá-šipka = if prima { šipka-nahoru } else { scale(x: 130%, y: 275%, origin: top)[$arrow.b$] }

  // ── pomocný řádek ──
  let řádek(levý, pravý, bottom: 0pt) = grid(
    columns: (šířka-levá, 25pt, šířka-pravá),
    column-gutter: 5pt,
    inset: (bottom: bottom),
    align: (left, center, right),
    [#levý], [..........], [#pravý],
  )

  // ── hlavní grid ──
  grid(
    columns: (5pt, auto, 5pt),
    column-gutter: 10pt,
    row-gutter: 1em,
    align: (top, center + horizon, top),

    grid.cell(rowspan: 2)[#šipka-nahoru],
    řádek([#x1], [#y1]),
    grid.cell(rowspan: 2)[#pravá-šipka],
    grid.cell(stroke: (bottom: 1pt))[
      #řádek([#x2], [#y2], bottom: 4pt)],
  )
}

#trojclenka(2, 3, 4, 6)          // prima = true (pravá šipka nahoru)
#trojclenka(2, 3, 4, 6, prima: false)  // pravá šipka dolů

#trojclenka("5 kg", "120 Kč", "8 kg", "x Kč")

#trojclenka("4 dělníci", "12 dní", "6 dělníků", "x dní", prima: false)
