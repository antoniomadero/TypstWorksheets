#set page(paper: "a5", margin: 0.8cm)
#set text(size: 9.5pt)
#show heading.where(level: 1): it => {
  set align(center)
  set text(size: 22pt)
  it
}
#set enum(spacing: 0.5cm)

#let ramecek(obsah) = block(
  width: 100%, // Šířka přes celý list
  fill: rgb("#bcffc5"), // Velmi světle modrá výplň
  stroke: (1pt + green),
  radius: 8pt, // Kulaté rohy
  inset: 1em, // Mezera mezi textem a okrajem rámečku
  [
    #set text(size: 8.5pt, fill: rgb("#004080")) // Nastavení textu uvnitř
    #set align(center)
    #obsah
  ],
)
= Kolonie #emoji.camping

*Jméno a příjmení:*

#ramecek(
  [*Popis mise:* Jsi vedoucím kolonizátorem nového ostrova. Tvým úkolem je optimalizovat zdroje a rozvoj kolonie, či řešit problémy pomocí matematických dovedností, zejména pomocí trojčlenky.],
)

== Úkoly:
+ *Nejdříve je třeba zajistit obydlí - postavit domy a zajistit materiál.*  #emoji.hut \ Na 3 domy je potřeba 450 kg dřeva. Kolik dřeva potřebují na 8 domů? \ #v(5em) *_Odpověď:_*
+ *Nyní bude třeba zajistit potravu pro obyvatele.* #emoji.plant \ 5 farmářů dokáže vypěstovat dostatek jídla pro 20 lidí. Kolik farmářů bude potřeba, aby zajistili potravu pro 50 lidí? \ #v(5em)*_Odpověď:_*
+ *Bohužel kvůli bouři se zpozdí příjezd lodě se zásobami.* #emoji.ship \ Zásoby jim měly vydržet na 9 dní.O kolik % budou muset snížit příděly, aby vydrželi o 3 dny déle? (plný příděl = 100 %)\ #v(5em) *_Odpověď:_*
+ *Kolonie potřebuje rychle opravit přístavní molo, které bylo poškozeno při bouři.* #emoji.hammer.wrench \ 8 dělníků by opravu zvládlo za 18 dní. Kolik dělníků je potřeba, aby byla oprava hotová za 12 dní? \  #v(5em)*_Odpověď:_*



