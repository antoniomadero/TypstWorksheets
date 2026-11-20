#set page(paper: "a4", margin: (x: 1.3cm, y: 0.8cm))
#set text(size: 13pt, lang: "cs")

#let ulohy(items) = grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.35cm,
  row-gutter: 1cm,
  ..items.map(((number, expression)) => [
    #stack(
      spacing: 1cm,
      [#text(size: 12pt)[#numbering("a)", number)] #expression],
      
    )
  ]),
)

#align(center)[
  #text(size: 16pt, weight: "bold")[Smíšená čísla]
]
#v(0.25cm)

== 1. Převeď nepravé zlomky na smíšená čísla
*
  Vzor: $17/5 = 3$ zbytek $2$, tedy $17/5 = 3 2/5$.*
#v(0.12cm)
#ulohy((
  (1, $11/2 = $), (2, $14/3 = $), (3, $19/4 = $),
  (4, $17/5 = $), (5, $23/6 = $), (6, $25/8 = $),
  (7, $16/7 = $), (8, $29/5 = $), (9, $31/6 = $),
  (10, $27/4 = $), (11, $22/3 = $), (12, $35/8 = $),
  (13, $26/9 = $), (14, $41/10 = $), (15, $37/6 = $),
))
#v(0.28cm)

== 2. Převeď smíšená čísla na nepravé zlomky
*
  Vzor: $2 3/7 = (2 · 7 + 3)/7 = 17/7$.
*
#v(0.12cm)
#ulohy((
  (1, $1 1/2 = $), (2, $2 1/3 =$), (3, $3 2/5 =$),
  (4, $1 3/4 =$), (5, $4 1/6 =$), (6, $2 5/8 =$),
  (7, $3 4/7 =$), (8, $5 2/3 =$), (9, $6 3/8 =$),
  (10, $2 7/9 =$), (11, $4 3/10 =$), (12, $7 5/6 =$),
  (13, $3 5/12 =$), (14, $8 7/10 =$), (15, $5 4/9 =$),
))
#v(0.28cm)

== 3. Sečti a odečti smíšená čísla
*
  Vzor: $2 1/3 + 1 1/6$ = nejdříve převedeme na zlomky $14/6 + 7/6 = $ pokud je potřeba převedeme na společného jmenovatele, pak sečteme a zkrátíme$ 21/6 = 7/2$*

#v(0.12cm)
#ulohy((
  (1, $1 1/4 + 2 2/4 =$), (2, $3 1/3 + 1 2/3 =$), (3, $2 1/5 + 3 2/5 =$),
  (4, $4 3/8 - 1 1/8 =$), (5, $5 5/6 - 2 1/6 =$), (6, $3 3/4 - 1 1/4 =$),
  (7, $1 1/2 + 2 1/4 =$), (8, $2 2/3 + 1 1/6 =$), (9, $3 1/5 + 2 1/2 =$),
  (10, $4 1/3 - 2 1/6 =$), (11, $5 1/4 - 2 1/2 =$), (12, $6 1/3 - 3 5/6 =$),
  (13, $2 3/8 + 1 1/4 =$), (14, $4 2/5 - 1 3/10 =$), (15, $3 1/6 + 2 3/4 =$),
))