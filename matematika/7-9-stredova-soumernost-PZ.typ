#import "@preview/touying:0.8.0": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Středová souměrnost],
    subtitle: [7. ročník],
    author: [Matematika],
  ),
  config-colors(
    primary: rgb("#1d3557"),
    primary-light: rgb("#a8dadc"),
    secondary: rgb("#457b9d"),
    neutral-lightest: rgb("#f8f9fa"),
    neutral-dark: rgb("#1d3557"),
    neutral-darkest: rgb("#1d3557"),
  ),
)

#title-slide()
#set text(size: 32pt, lang: "cs")

== Co se dnes naučíme

- vysvětlit, co je středová souměrnost
- sestrojit obraz bodu i jednoduchého útvaru
- ověřit, že jsme obraz sestrojili správně

#v(0.7em)

*Pomůcka:* pravítko, kružítko a tužka

== Půl otočky kolem středu

Středová souměrnost je otočení o *180°* kolem středu $S$.

#v(0.6em)

#align(center)[
  #text(size: 40pt)[$A quad — quad S quad — quad A'$]
]

#align(center)[
  $A$, $S$ a $A'$ leží na jedné přímce. Střed $S$ je přesně uprostřed.
]

== Obraz bodu

Obraz bodu $A$ ve středové souměrnosti se středem $S$ označíme $A'$.

#v(0.5em)

Platí:

#align(center)[
  #text(size: 38pt)[$S in overline(A A') quad |S A| = |S A'|$]
]

Jinými slovy: $S$ je *střed úsečky* $overline(A A')$.

== Jak sestrojit obraz bodu

Zobraz bod $A$ ve středové souměrnosti se středem $S$.

#parbreak()

1. Narýsuj přímku procházející body $A$ a $S$.

2. Kružítko nastav na vzdálenost $S A$.

3. Na opačné straně od $S$ vyznač bod $A'$ tak, aby $|S A'| = |S A|$.

*Kontrola:* $S$ musí být střed úsečky $overline(A A')$.

== Krátký vzorový příklad

Je dáno $|S A| = 3 "cm"$. Sestrojíme obraz $A'$.

#v(0.5em)

- $A'$ leží na přímce $A S$, ale na opačné straně od $S$.
- Vzdálenost od středu zůstává stejná: $|S A'| = 3 "cm"$.

#block[
  $|A A'| = |A S| + |S A'| = 3 + 3 = 6 "cm"$

  Bod $S$ je střed úsečky $overline(A A')$.
]

== Obraz celého útvaru

Každý vrchol zobrazíme zvlášť:

#align(center)[
  #text(size: 36pt)[$A -> A', quad B -> B', quad C -> C'$]
]

#v(0.4em)

- U každého vrcholu musí být střed $S$ středem spojnice bodu a jeho obrazu.
- Obrazy vrcholů spojíme ve stejném pořadí: $A'$, $B'$, $C'$.

== Příklad: trojúhelník

Najdi obraz trojúhelníku $A B C$ se středem souměrnosti $S$.

#align(center)[
  #image("images/stredova_trojuhelnik.png", height: 5.2cm)
]

Nejdřív sestroj $A'$, $B'$ a $C'$. Potom spoj $A'B'C'$.

== Co se při zobrazení zachová?

- délky úseček
- velikosti úhlů
- obvod i obsah útvaru

#v(0.5em)

Středová souměrnost *nemění velikost ani tvar*, pouze polohu útvaru.

Obrazem přímky, která prochází středem $S$, je tatáž přímka.

== Které útvary mají střed souměrnosti?

Střed souměrnosti útvaru je bod, podle kterého se útvar zobrazí *sám na sebe*.

#v(0.5em)

- rovnoběžník: průsečík úhlopříček
- obdélník, čtverec a kosočtverec: průsečík úhlopříček
- kružnice: její střed

U obecného trojúhelníku takový střed neexistuje.

== Teď rýsuj ty

Sestroj obrazy vrcholů trojúhelníku $A B C$ ve středové souměrnosti se středem $S$.

#align(center)[
  #image("images/stredova_trojuhelnik.png", height: 5.2cm)
]

== Pozor na časté chyby

- Obraz neleží jen „někde stejně daleko“: body $A$, $S$, $A'$ musí ležet na jedné přímce.
- $A$ a $A'$ jsou na *opačných stranách* od středu $S$.
- Stejný postup proveď pro každý vrchol útvaru.

#v(0.5em)

#align(center)[
  #text(size: 36pt)[$S A = S A' quad "a zároveň" quad S in overline(A A')$]
]

== Samostatná výzva

Sestroj obraz čtyřúhelníku $A B C D$ se středem souměrnosti $S$.

#align(center)[
  #image("images/stredova_ctverec.png", height: 3.2cm)
]

Označ obrazy vrcholů $A'$, $B'$, $C'$, $D'$ a spoj je ve správném pořadí.

== Rychlá kontrola

Jak poznáš, že bod $A'$ je obrazem bodu $A$ podle středu $S$?

1. $A$, $S$ a $A'$ leží na jedné přímce.
2. $A$ a $A'$ jsou na opačných stranách od $S$.
3. $|S A| = |S A'|$.

#v(0.5em)

*Výborně!* To je středová souměrnost.
