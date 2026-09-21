#set page(
  paper: "a4",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 1.7cm, right: 1.7cm),
)

#set text(
  font: "Calibri",
  size: 9.5pt,
  fill: rgb("#252525"),
)

#set par(
  justify: true,
  leading: 0.55em,
)

#let accent = rgb("#2563eb")
#let muted = rgb("#64748b")
#let light = rgb("#e2e8f0")

// Nadpis sekce
#let section(title) = {
  v(0.8em)
  text(size: 12pt, weight: "bold", fill: accent)[#title]
  line(length: 100%, stroke: 0.7pt + light)
  v(0.3em)
}

// Pracovní pozice
#let job(date, position, company, body) = {
  grid(
    columns: (2.7cm, 1fr),
    column-gutter: 0.6cm,
    align: (left, top),
    [
      #text(size: 8.5pt, fill: muted)[#date]
    ],
    [
      #text(weight: "bold", size: 10.5pt)[#position] \
      #text(fill: accent, weight: "bold")[#company]
      #v(0.25em)
      #body
    ],
  )
  v(0.55em)
}

// Vzdělání
#let education(date, school, field) = {
  grid(
    columns: (2.7cm, 1fr),
    column-gutter: 0.6cm,
    [
      #text(size: 8.5pt, fill: muted)[#date]
    ],
    [
      #text(weight: "bold", size: 10.5pt)[#school] \
      #text(fill: muted)[#field]
    ],
  )
  v(0.45em)
}

// ---------------- HEADER ----------------

#grid(
  columns: (1fr, auto),
  align: (left, top),

  [
    #text(size: 28pt, weight: "bold")[Jan Novák]

    #v(0.2em)

    #text(size: 13pt, fill: accent)[Učitel matematiky a informatiky]

    #v(0.7em)

    #text(size: 8.8pt, fill: muted)[
      Praha · Česká republika
      · +420 123 456 789
      · jan.novakemail.cz
    ]
  ],

  [
    // Jednoduchý monogram místo fotografie
    #box(
      width: 2.3cm,
      height: 2.3cm,
      fill: accent,
      radius: 5pt,
      inset: 0pt,
    )[
      #align(center + horizon)[
        #text(size: 18pt, weight: "bold", fill: white)[JN]
      ]
    ]
  ],
)

#section("PROFIL")

#text(size: 10pt)[
  Učitel matematiky a informatiky se zkušeností s výukou na druhém stupni
  základní školy. Zaměřuji se na praktické využití digitálních technologií,
  programování, finanční gramotnost a smysluplné využití umělé inteligence
  ve vzdělávání. Baví mě vytvářet vlastní výukové materiály a jednoduché
  vzdělávací aplikace.
]

#section("PRACOVNÍ ZKUŠENOSTI")

#job(
  "2020 – současnost",
  "Učitel matematiky a informatiky",
  "Základní škola",
  [
    Výuka matematiky na 2. stupni a informatiky v 8. a 9. ročníku. \
    Tvorba vlastních digitálních materiálů, projektové výuky a
    programovacích úloh.

    #v(0.2em)

    - programování: JavaScript, Python, Scratch, Micro:bit \
    - tvorba vlastních vzdělávacích aplikací \
    - využití AI ve vzdělávání \
    - finanční a kariérové vzdělávání
  ],
)

#job(
  "2015 – 2020",
  "Učitel matematiky",
  "Základní škola",
  [
    Výuka matematiky na druhém stupni, příprava žáků na přijímací
    zkoušky a tvorba vlastních pracovních materiálů.
  ],
)

#section("VZDĚLÁNÍ")

#education(
  "2010 – 2015",
  "Univerzita Palackého v Olomouci",
  "Učitelství matematiky pro základní školy",
)

#section("DOVEDNOSTI")

#grid(
  columns: (1fr, 1fr),
  gutter: 0.35cm,

  [
    #text(weight: "bold")[Technologie] \
    JavaScript · HTML · CSS · Python \
    Scratch · Micro:bit · Arduino \
    Git · GitHub · VS Code
  ],

  [
    #text(weight: "bold")[Vzdělávání] \
    Matematika · Informatika \
    Finanční gramotnost · Kariérové poradenství \
    Projektová výuka · AI ve vzdělávání
  ],
)

#section("PROJEKTY")

#job(
  "2025 – současnost",
  "CareUp",
  "Webová aplikace pro kariérové poradenství",
  [
    Vlastní webová aplikace založená na metodice RIASEC/Holland.
    Určená především žákům 8. a 9. tříd při rozhodování o další
    vzdělávací cestě.
  ],
)

#job(
  "2024 – současnost",
  "Codestein",
  "Vzdělávací web",
  [
    Soubor vlastních webových her, programovacích úloh a materiálů
    pro výuku informatiky.
  ],
)

#section("DALŠÍ INFORMACE")

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.5cm,

  [
    #text(weight: "bold")[Jazyky] \
    Čeština – rodilý mluvčí \
    Angličtina – B2
  ],

  [
    #text(weight: "bold")[Řidičský průkaz] \
    Skupina B
  ],

  [
    #text(weight: "bold")[Zájmy] \
    Technologie · programování \
    elektronika · vzdělávání
  ],
)
