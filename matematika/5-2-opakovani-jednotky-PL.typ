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
    #text(size: 15pt, weight: "bold")[Pracovní list převody jednotek délky a hmotnosti]
  ]
]
#v(0.18cm)

#section[1. Převeď jednotky délky.]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8cm,
  [
    a) 2 km = #h(1.2cm) m
    #v(0.5cm)
    b) 5 m = #h(1.2cm) dm
    #v(0.5cm)
    c) 37 dm = #h(1.2cm) cm
    #v(0.5cm)
    d) 680 cm = #h(1.2cm) mm
    #v(0.5cm)
    e) 9 000 mm = #h(1.2cm) m
    #v(0.5cm)
    f) 4 km = #h(1.2cm) m
    #v(0.5cm)
    g) 82 m = #h(1.2cm) cm
    #v(0.5cm)
    h) 5600 cm = #h(1.2cm) m
    #v(0.5cm)
  ],
  [
    i) 3 km = #h(1.2cm) m
    #v(0.5cm)
    j) 26 m = #h(1.2cm) dm
    #v(0.5cm)
    k) 480 dm = #h(1.2cm) m
    #v(0.5cm)
    l) 7 m = #h(1.2cm) cm
    #v(0.5cm)
    m) 5 300 mm = #h(1.2cm) dm
    #v(0.5cm)
    n) 6 km = #h(1.2cm) m
    #v(0.5cm)
    o) 900 cm = #h(1.2cm) m
    #v(0.5cm)
    p) 81 dm = #h(1.2cm) mm
  ],
  [
    q) 8 km = #h(1.2cm) m
    #v(0.5cm)
    r) 65 m = #h(1.2cm) cm
    #v(0.5cm)
    s) 720 cm = #h(1.2cm) dm
    #v(0.5cm)
    t) 15 dm = #h(1.2cm) cm
    #v(0.5cm)
    u) 40 000 mm = #h(1.2cm) m
    #v(0.5cm)
    v) 9 km = #h(1.2cm) m
    #v(0.5cm)
    w) 3000 m = #h(1.2cm) km
    #v(0.5cm)
    x) 2 300 cm = #h(1.2cm) m
  ],
)

#section[2. Vyřeš slovní úlohy – délka.]

#problem("a) ", [Cyklista ujel dopoledne 3 km 450 m a odpoledne 2 750 m. Kolik metrů ujel celkem?])
#problem("b) ", [Cesta do školy měří 850 m. Eliška šla tam i zpět 5 dní. Kolik kilometrů ušla?])
#problem("c) ", [Lano dlouhé 12 m 6 dm rozstříháme na 6 stejně dlouhých kusů. Kolik centimetrů měří jeden kus?])


#section[3. Převeď jednotky hmotnosti.]
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 0.6cm,
  [
    a) 4 t = #h(1.2cm) kg
    #v(0.5cm)
    b) 7 000 kg = #h(1.2cm) t
    #v(0.5cm)
    c) 6 kg = #h(1.2cm) g
    #v(0.5cm)
    d) 8 500 g = #h(0.8cm) kg #h(1cm) g
    #v(0.5cm)
    e) 12 t = #h(1.2cm) kg
  ],
  [
    f) 3 t = #h(1.2cm) kg
    #v(0.5cm)
    g) 9 000 kg = #h(1.2cm) t
    #v(0.5cm)
    h) 14 kg = #h(1.2cm) g
    #v(0.5cm)
    i) 6 300 g = #h(0.8cm) kg #h(1cm) g
    #v(0.5cm)
    j) 25 t = #h(1.2cm) kg
  ],
  [
    k) 8 t = #h(1.2cm) kg
    #v(0.5cm)
    l) 5 000 kg = #h(1.2cm) t
    #v(0.5cm)
    m) 32 kg = #h(1.2cm) g
    #v(0.5cm)
    n) 4 750 g = #h(0.8cm) kg #h(1cm) g
    #v(0.5cm)
    o) 6 t = #h(1.2cm) kg
  ],
  [
    p) 15 t = #h(1.2cm) kg
    #v(0.5cm)
    q) 2 000 kg = #h(1.2cm) t
    #v(0.5cm)
    r) 9 kg = #h(1.2cm) g
    #v(0.5cm)
    s) 12 500 g = #h(0.8cm) kg #h(1cm) g
    #v(0.5cm)
    t) 2 t = #h(1.2cm) kg
  ],
)
#v(0.5cm)
#section[4. Vyřeš slovní úlohy – hmotnost.]
#problem("a) ", [V pytli bylo 25 kg brambor. Spotřebovali jsme 7 kg 500 g. Kolik gramů brambor zbylo?])
#problem("b) ", [Vůz odvezl 150 pytlů, každý vážil 20 kg. Kolik tun nákladu odvezl?])
#problem("c) ", [Dvě tuny krmiva rozdělíme do pytlů po 50 kg. Kolik pytlů naplníme?])
