#set page(paper: "a4", margin: (x: 1cm, y: 0.7cm))
#set text(size: 10pt, lang: "cs")
#set par(leading: 0.65em, spacing: 0pt)

#let section(title) = {
  v(0.28cm)
  text(size: 13pt, weight: "bold")[#title]
  v(0.18cm)
}

#let problem(label, wording) = [
  #text(weight: "bold", size: 10pt)[#label]
  #wording
  #v(0.3cm)
  #text(size: 9pt)[Výpočet a odpověď:]
  #v(1.35cm)
]

#block(
  width: 100%,
  inset: (x: 0.3cm, y: 0.22cm),
  radius: 5pt,
  fill: rgb("#f1f5f9"),
  stroke: 1pt + rgb("#52718a"),
)[
  #align(center)[
    #text(size: 15pt, weight: "bold")[Opakování jednotek času a objemu]
  ]
]
#v(1cm)

#section[1. Převeď jednotky času.]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8cm,
  [
    a) 3 min = #h(1.2cm) s
    #v(0.5cm)
    b) 240 s = #h(1.2cm) min
    #v(0.5cm)
    c) 2 h = #h(1.2cm) min
    #v(0.5cm)
    d) 180 min = #h(1.2cm) h
    #v(0.5cm)
    e) 4 dny = #h(1.2cm) h
    #v(0.5cm)
    f) 72 h = #h(1.2cm) dny
  ],
  [
    g) 5 min = #h(1.2cm) s
    #v(0.5cm)
    h) 420 s = #h(1.2cm) min
    #v(0.5cm)
    i) 3 h = #h(1.2cm) min
    #v(0.5cm)
    j) 360 min = #h(1.2cm) h
    #v(0.5cm)
    k) 2 dny = #h(1.2cm) h
    #v(0.5cm)
    l) 96 h = #h(1.2cm) dny
  ],
  [
    m) 8 min = #h(1.2cm) s
    #v(0.5cm)
    n) 600 s = #h(1.2cm) min
    #v(0.5cm)
    o) 5 h = #h(1.2cm) min
    #v(0.5cm)
    p) 540 min = #h(1.2cm) h
    #v(0.5cm)
    q) 7 dní = #h(1.2cm) h
    #v(0.5cm)
    r) 48 h = #h(1.2cm) dny
  ],
)
#v(1cm)
#section[2. Vyřeš slovní úlohy – čas.]
#problem("a) ", [Film začal v 16:20 a skončil v 18:05. Jak dlouho film trval?])
#problem("b) ", [Tereza trénovala 3krát týdně vždy 45 minut. Kolik minut trénovala za 4 týdny?])
#problem("c) ", [Výlet začal v 8:15 a trval 6 hodin a 40 minut. V kolik hodin výlet skončil?])

#section[3. Převeď jednotky objemu.]
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 0.6cm,
  [
    a) 4 hl = #h(1.2cm) l
    #v(0.5cm)
    b) 700 l = #h(1.2cm) hl
    #v(0.5cm)
    c) 6 l = #h(1.2cm) ml
    #v(0.5cm)
    d) 8 500 ml = #h(0.8cm) l #h(1cm) ml
    #v(0.5cm)
    e) 12 hl = #h(1.2cm) l
  ],
  [
    f) 3 hl = #h(1.2cm) l
    #v(0.5cm)
    g) 900 l = #h(1.2cm) hl
    #v(0.5cm)
    h) 14 l = #h(1.2cm) ml
    #v(0.5cm)
    i) 6 300 ml = #h(0.8cm) l #h(1cm) ml
    #v(0.5cm)
    j) 25 hl = #h(1.2cm) l
  ],
  [
    k) 8 hl = #h(1.2cm) l
    #v(0.5cm)
    l) 500 l = #h(1.2cm) hl
    #v(0.5cm)
    m) 32 l = #h(1.2cm) ml
    #v(0.5cm)
    n) 4 750 ml = #h(0.8cm) l #h(1cm) ml
    #v(0.5cm)
    o) 6 hl = #h(1.2cm) l
  ],
  [
    p) 15 hl = #h(1.2cm) l
    #v(0.5cm)
    q) 2 000 l = #h(1.2cm) hl
    #v(0.5cm)
    r) 9 l = #h(1.2cm) ml
    #v(0.5cm)
    s) 12 500 ml = #h(0.8cm) l #h(1cm) ml
    #v(0.5cm)
    t) 2 hl 35 l = #h(1.2cm) l
  ],
)
#v(0.5cm)

#section[4. Vyřeš slovní úlohy – objem.]
#problem("a) ", [V nádrži bylo 3 hl vody. Rodina spotřebovala 125 l. Kolik litrů vody v nádrži zůstalo?])
#problem("b) ", [Do každé lahve se vejde 750 ml limonády. Kolik mililitrů limonády je potřeba na naplnění 8 lahví?])
#problem("c) ", [Z cisterny o objemu 12 hl naplnili sudy, každý po 200 l. Kolik sudů naplnili?])
