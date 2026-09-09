

#set text(
  size: 9pt,
  fill: rgb("#1e293b"),
  lang: "cs",
  font: "Calibri",
)


// Horní barevný banner
#block(width: 100%, height: 45pt, fill: rgb("#f59e0b"), radius: 6pt)
#v(-70pt)
#block(
  width: 100%,
  fill: gradient.linear(rgb("#0d276d"), rgb("#1c61da")),
  inset: 14pt,
  radius: 5pt,
  //stroke: (bottom: 4pt + rgb("#f59e0b")),
  [
    #align(center)[
      #text(fill: rgb("#ffffff"), weight: "bold", size: 16pt, font: "Exo 2")[KARIÉROVÉ PORADENSTVÍ] \
      #v(1pt)
      #text(fill: rgb("#dbeafe"), weight: "medium", size: 9pt)[
        Pomáháme vašim dětem najít správnou cestu k budoucnosti
      ]
    ]
  ],
)


// Úvodní slovo pro rodiče
#rect(
  width: 100%,
  fill: rgb("#f8fafc"),
  stroke: (left: 5pt + rgb("#2563eb")),
  inset: (x: 10pt, y: 8pt),
  radius: 5pt,
)[
  *Vážení rodiče,* \
  volba střední školy a budoucího povolání je jedním z prvních velkých životních rozhodnutí vašich dětí. Naše škola nabízí systém kariérového poradenství, jehož cílem je pomoci žákům poznat své silné stránky, zájmy i možnosti dalšího studia.
]
// Dva sloupce (Jak pomáháme / Jak pomáhá rodič)
#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect(
    width: 100%,
    height: 21%,
    stroke: 0.5pt + rgb("#e2e8f0"),
    inset: (x: 10pt, y: 8pt),
    radius: 5pt,
  )[
    #text(fill: rgb("#2563eb"), weight: "bold", size: 10pt)[S čím pomáháme?]
    #set list(spacing: 0.9em)
    - *Sebepoznání:* Co mě baví a co mi jde.
    - *Informovaný výběr:* Přehled o SŠ a oborech.
    - *Individuální konzultace:* Pro žáky i rodiče.
    - *Testování:* Využití diagnostických nástrojů profesní orientace.
  ],
  rect(
    width: 100%,
    height: 21%,
    stroke: 0.5pt + rgb("#e2e8f0"),
    inset: (x: 10pt, y: 8pt),
    radius: 5pt,
  )[
    #text(fill: rgb("#2563eb"), weight: "bold", size: 10pt)[Jak můžete pomoci vy?]
    #set list(spacing: 0.9em)
    - Mluvte s dětmi o jejich představách a zájmech.
    - Netlačte pouze na výkon, berte v úvahu možnosti.
    - Navštivte společně dny otevřených dveří.
    - Sledujte důležité termíny přihlášek.
  ],
)
#v(-0.5%)
// === EDITOVATELNÁ SEKCÍ AKTIVIT ===
#rect(
  width: 100%,
  fill: rgb("#fffbeb"),
  stroke: (dash: "dashed", paint: rgb("#f59e0b"), thickness: 1pt),
  inset: (x: 10pt, y: 8pt),
  radius: 5pt,
)[
  #text(fill: rgb("#b45309"), weight: "bold", size: 12pt)[📌 Harmonogram & Plánované aktivity]

  #list(
    marker: none,
    body-indent: 0pt,

    // Zde můžete velmi snadno přidávat nebo upravovat řádky:
    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[ZÁŘÍ]] #h(5pt) Den kariérového poradenství - MKZ],

    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[ŘÍJEN]] #h(5pt) Testování profesní orientace],

    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[LISTOPAD]] #h(5pt) Scholaris - burza středních škol a oborů (Olomouc 25.11. - 26.11. 2026) ],

    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[ŘÍJEN – ÚNOR]] #h(5pt) Individuální konzultace k výběru oborů a přihláškám],

    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[LEDEN]] #h(5pt) Pololetní vysvědčení, žáci obdrží výpis známek (příloha k přihlášce)],

    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[ÚNOR]] #h(5pt) Podávání přihlášek na střední školy (systém DiPSY) - *1.2. - 22.2. 2027*],
    [#box(fill: rgb("#f59e0b"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[DUBEN]] #h(5pt) Přijímací řízení - Testy CERMAT],

    // RÁDKY PRO VAŠE VLASTNÍ AKTIVITY (PŘIPRAVENO K ÚPRAVĚ):
    [#box(fill: rgb("#d97706"), inset: (x: 5pt, y: 3pt), radius: 3pt)[#text(fill: white, weight: "bold", size: 8pt)[DALŠÍ AKCE]] #h(5pt) _Přijímačky nanečisto, *Exkurze*: PL Šternberk, SOŠLaS Šternberk_],
  )
]

// === UŽITEČNÉ ODKAZY ===
#rect(
  width: 100%,
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#bbf7d0"),
  inset: (x: 10pt, y: 8pt),
  radius: 5pt,
)[
  #text(fill: rgb("#166534"), weight: "bold", size: 9.5pt)[🔗 Užitečné odkazy]

  #text(
    fill: rgb("#0f41c9"),
  )[*prihlaskynastredni.cz / dipsy.cz / prijimacky.cermat.cz / atlasskolstvi.cz / infoabsolvent.cz*]

]

// === KONTAKTNÍ BOX ===
#rect(
  width: 100%,
  fill: rgb("#eff6ff"),
  stroke: 1pt + rgb("#bfdbfe"),
  inset: (x: 10pt, y: 8pt),
  radius: 5pt,
)[
  #text(fill: rgb("#1e3a8a"), weight: "bold", size: 9.5pt)[✉️ Kontaktní osoba & Konzultační hodiny]

  #grid(
    columns: (1fr, 1fr),
    row-gutter: 2pt,
    [*Kariérový poradce:* Mgr. Antonín Gerža], [*E-mail:* gerza\@zssvat.cz],
  )
  *Konzultace:* Po předchozí domluvě přes e-mail, nebo Edupage
]
#v(-0.5%)
// Patka
#align(bottom + center)[
  #line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
  #v(-3pt)
  #text(
    size: 8pt,
    fill: rgb("#94a3b8"),
  )[Základní škola Svatoplukova 7, Šternberk | Kariérové poradenství | Školní rok 2026/2027]
]



