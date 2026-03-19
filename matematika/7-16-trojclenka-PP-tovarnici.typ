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
= Továrna #emoji.factory

*Jméno a příjmení:*

#ramecek(
  [*Popis mise:* Jsi majitelem továrny, která vyrábí různé produkty. Tvým úkolem je optimalizovat výrobu a zisk, či řešit problémy pomocí matematických dovedností, zejména pomocí trojčlenky.],
)

== Úkoly:
+ *Nejdříve je třeba zajistit suroviny - nakoupit materiál a zajistit dodávky.*  #emoji.truck \ Na výrobu 90 kusů produktu je potřeba 450 kg surovin. Kolik surovin potřebují na výrobu 300 kusů? \ #v(5em) *_Odpověď:_*
+ *Nyní bude třeba optimalizovat výrobu.* #emoji.gear \ 5 strojů dokáže vyrobit 200 kusů produktu za den. Kolik strojů bude potřeba, aby vyrobily 500 kusů za den? \ #v(5em)*_Odpověď:_*
+ *Bohužel kvůli poruše se zpozdí výroba.* #emoji.warning \ Výroba měla trvat 12 dní. O kolik % budou muset zvýšit výkon, aby stihli výrobu dokončit o 4 dny dříve? (plný výkon = 100 %)\ #v(5em) *_Odpověď:_*
+ *Továrna potřebuje rychle opravit výrobní linku, která byla poškozena při bouři.* #emoji.hammer.wrench \ 8 dělníků by opravu zvládlo za 18 dní. Kolik dělníků je potřeba, aby byla oprava hotová za 12 dní? \  #v(5em)*_Odpověď:_*



