#set page(paper: "a4", margin: 1.1cm, flipped: true)
#set text(size: 1em)
#set enum(numbering: "a)", spacing: 1cm)

// Makro nebo šablona pro rozdělení písemky na dvě varianty vedle sebe
#let variant-box(title: "Písemná práce", body) = {
  block(width: 100%, height: 2em + 35pt, inset: 15pt, radius: 5pt, fill: rgb("#e2e2e2"))[
    *Jméno a příjmení:  #h(1fr) Body: #h(1fr) Známka: #h(1fr) *
    #align(center)[#text(weight: "bold", size: 12pt)[#title]]

    #body
  ]
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2cm,
  stroke: (x, y) => (right: if x == 0 { 0.5pt + gray } else { none }),
  variant-box(title: "Písemná práce", [
    // Sem přijdou příklady pro variantu A
  ]),
  variant-box(title: "Písemná práce", [
    // Sem přijdou příklady pro variantu B
  ]),
)
