#set page(paper: "a4", margin: (x: 1cm, y: 0.5cm), flipped: true)
#set text(size: 9.5pt, lang: "cs")
#set enum(numbering: "a)", spacing: 1.3cm)

#let max-body = 8

#let jednicka-od = calc.round(max-body * 0.91)
#let dvojka-od = calc.round(max-body * 0.75)
#let trojka-od = calc.round(max-body * 0.4)
#let ctyrka-od = calc.round(max-body * 0.25)

#let variant-box(title: "Varianta A", body) = {
  block(
    width: 100%,
    inset: 10pt,
    radius: 5pt,
    fill: rgb("#e2e2e2"),
  )[
    *Jméno a příjmení:  #h(3fr) Body: #h(1fr) Známka: #h(1fr) *

    #align(center)[
      #text(weight: "bold", size: 12pt)[#title]
    ]
  ]

  v(1em)
  body

  block(
    radius: 5pt,
    clip: true,
    stroke: 1pt + gray,
    fill: rgb("#eeeeee"),
  )[
    #text(size: 6pt)[
      #table(
        columns: 6,
        align: center,
        stroke: 0.5pt,

        [Známka], [1], [2], [3], [4], [5],
        [Body],
        [#max-body–#jednicka-od],
        [#(jednicka-od - 1)–#dvojka-od],
        [#(dvojka-od - 1)–#trojka-od],
        [#(trojka-od - 1)–#ctyrka-od],
        [#(ctyrka-od - 1)–0],
      )
    ]
  ]
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5cm,

  variant-box(title: "Písemná práce – Varianta A", [
    + Klára oběhne atletický ovál za 14 minut, Tomáš za 21 minut. Vyběhnou současně ze stejného místa. Za jak dlouho se znovu setkají na startu a kolik kol každý uběhne? *2 body*
    #v(1fr)
    + Pan školník má 56 modrých a 84 červených tužek. Chce připravit co nejvíce stejných balíčků bez zbytku. Kolik balíčků připraví a kolik tužek každé barvy bude v jednom? *2 body*
    #v(1fr)
    + Linka A vyjíždí každých 18 minut a linka B každých 27 minut. Obě vyjely současně v 7:00. V kolik hodin nejdříve vyjedou znovu společně? *2 body*
    #v(1fr)
    + Maminka má stuhy dlouhé 96 cm a 144 cm. Chce je rozstříhat na stejně dlouhé co nejdelší kousky bez zbytku. Jak dlouhý bude jeden kousek? *2 body*
    #v(1fr)
  ]),
  variant-box(title: "Písemná práce – Varianta B", [
    + První světelný signál bliká každých 16 sekund, druhý každých 24 sekund. Právě blikly současně. Za kolik sekund bliknou znovu současně? *2 body*
    #v(1fr)
    + Pekař upekl 75 rohlíků a 105 loupáků. Chce je rozdělit do co největšího počtu stejných sáčků, aby nic nezbylo. Kolik sáčků naplní a kolik kusů každého pečiva bude v jednom? *2 body*
    #v(1fr)
    + Vlaky linek S1 a S2 jezdí každých 30 a 45 minut. Na nádraží se potkaly v 9:00. Za kolik minut a v kolik hodin se tam znovu potkají? *2 body*
    #v(1fr)
    + Ve třídě je 54 chlapců a 81 dívek. Učitel chce vytvořit co nejvíce stejných smíšených družstev tak, aby nikdo nezbyl. Kolik družstev vytvoří a kolik chlapců a dívek bude v každém? *2 body*
    #v(1fr)
  ]),
)
