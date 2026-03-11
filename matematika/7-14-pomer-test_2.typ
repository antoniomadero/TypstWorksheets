#set page(margin: 1cm, flipped: true)
#set text(size: 10pt)
#set enum(numbering: "a)")
#show heading.where(level: 2): it => block(
  below: 1.3em,
  above: 1.8em,
  it,
)
#show heading.where(level: 1): it => block(
  below: -1em,
  above: 1em,
  text(size: 0.9em, it),
)
#let instruction(it) = text(size: 0.9em, style: "italic", it)


#columns(2, [
  = TEST – POMĚR #h(1fr) Jméno a příjmení: #h(2fr)
  == 1. Úpravy poměrů (krácení a rozšiřování)
  #instruction[*Upravte poměry na základní tvar nebo je rozšiřte podle zadání.*]
  #set enum(spacing: 1.5em)
  + 30:45
  + 18:12:24
  + Rozšiř poměr 7:9 číslem 4

  == 2. Zapsání poměru - #instruction[Zapište poměr v #underline(stroke: 1pt, offset: 2pt)[základním tvaru] podle zadání.]
  #set enum(spacing: 3em)
  + Ve třídě je 16 chlapců a 24 dívek. Jaký je poměr chlapců k dívkám?
  + Směs obsahuje 500 g mouky a 300 g cukru. Jaký je poměr mouky k cukru?
  + Na parkovišti stojí 12 aut a 8 motocyklů. Jaký je poměr aut k motocyklům?

  == 3. Změna v daném poměru -   #instruction[Upravte čísla podle zadaného poměru.]
  #set enum(spacing: 1.5em)
  + Změň číslo 40 v poměru 5:4
  + Změň číslo 72 v poměru 3:4
  + Změň číslo 25 v poměru 7:5

  == 4. Slovní úlohy na poměr
  #set enum(spacing: 3em)
  + Rozděl 900 Kč mezi tři osoby v poměru 2:3:4.
  + Směs obsahuje tři složky v poměru 4:5:6. Celkem jí je 300 g. Kolik gramů má každá složka?
  + Cesta mezi dvěma městy byla zkrácena v poměru 5:6. Původní délka cesty byla 180 km. Jaká je nyní její délka?

  #colbreak()

  = TEST – POMĚR #h(1fr) Jméno a příjmení: #h(2fr)
  == 1. Úpravy poměrů (krácení a rozšiřování)
  #instruction[*Upravte poměry na základní tvar nebo je rozšiřte podle zadání.*]
  #set enum(spacing: 1.5em)
  + 30:45
  + 18:12:24
  + Rozšiř poměr 7:9 číslem 4

  == 2. Zapsání poměru - #instruction[Zapište poměr v #underline(stroke: 1pt, offset: 2pt)[základním tvaru] podle zadání.]
  #set enum(spacing: 3em)
  + Ve třídě je 16 chlapců a 24 dívek. Jaký je poměr chlapců k dívkám?
  + Směs obsahuje 500 g mouky a 300 g cukru. Jaký je poměr mouky k cukru?
  + Na parkovišti stojí 12 aut a 8 motocyklů. Jaký je poměr aut k motocyklům?

  == 3. Změna v daném poměru -   #instruction[Upravte čísla podle zadaného poměru.]
  #set enum(spacing: 1.5em)
  + Změň číslo 40 v poměru 5:4
  + Změň číslo 72 v poměru 3:4
  + Změň číslo 25 v poměru 7:5

  == 4. Slovní úlohy na poměr
  #set enum(spacing: 3em)
  + Rozděl 900 Kč mezi tři osoby v poměru 2:3:4.
  + Směs obsahuje tři složky v poměru 4:5:6. Celkem jí je 300 g. Kolik gramů má každá složka?
  + Cesta mezi dvěma městy byla zkrácena v poměru 5:6. Původní délka cesty byla 180 km. Jaká je nyní její délka?
])
