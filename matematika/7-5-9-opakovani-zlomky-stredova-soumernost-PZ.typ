#import "@preview/touying:0.8.0": *
#import themes.metropolis: *
#import "@preview/cetz:0.5.3"

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Opakování: zlomky a středová souměrnost],
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

== Dnešní mise

- zkrátit zlomek a najít společného jmenovatele
- sečíst a odečíst zlomky
- poznat a sestrojit obraz ve středové souměrnosti

== Krácení: hodnota zlomku se nemění

Čitatele i jmenovatele dělíme stejným číslem.

#v(0.5em)

#align(center)[$frac(18, 24) = frac(9, 12) = frac(3, 4)$]

#align(center)[Dělení číslem 2, potom číslem 3.]

== Společný jmenovatel

Najdeme nejmenší společný násobek jmenovatelů a zlomky rozšíříme.

#v(0.5em)

#align(center)[$frac(2, 3) + frac(3, 8) = frac(16, 24) + frac(9, 24)$]

#align(center)[$3 dot 8 = 24$]

== Sčítání zlomků

Se stejným jmenovatelem sečteme čitatele.

#v(0.5em)

#align(center)[$frac(5, 12) + frac(1, 8)$]
#align(center)[$= frac(10, 24) + frac(3, 24) = frac(13, 24)$]

Jmenovatel zůstává stejný.

== Odčítání zlomků

Nejdřív převedeme zlomky na společného jmenovatele.

#v(0.5em)

#align(center)[$frac(7, 10) - frac(1, 4)$]
#align(center)[$= frac(14, 20) - frac(5, 20) = frac(9, 20)$]

== Zlomky: rychlá výzva

Zkus nejdřív počítat samostatně.

- Zkrať: $frac(24, 36)$
- Sečti: $frac(1, 3) + frac(5, 12)$
- Odečti: $frac(7, 10) - frac(1, 4)$

== Kontrola zlomků

#align(center)[$frac(24, 36) = frac(2, 3)$]

#align(center)[$frac(1, 3) + frac(5, 12) = frac(4, 12) + frac(5, 12) = frac(9, 12) = frac(3, 4)$]

#align(center)[$frac(7, 10) - frac(1, 4) = frac(14, 20) - frac(5, 20) = frac(9, 20)$]

== Středová souměrnost

Obraz vznikne otočením o $180 degree$ kolem středu $S$.

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    line((-3, 1), (3, -1), stroke: 1.2pt)
    circle((-3, 1), radius: 0.1, fill: rgb("#457b9d"), stroke: 0.5pt)
    circle((0, 0), radius: 0.12, fill: rgb("#e76f51"), stroke: 0.5pt)
    circle((3, -1), radius: 0.1, fill: rgb("#457b9d"), stroke: 0.5pt)
    content((-3.35, 1.35), [$A$])
    content((-0.15, 0.3), [$S$])
    content((3.1, -0.65), [$A'$])
  })
]

#align(center)[$A$, $S$, $A'$ leží na jedné přímce. $S$ je přesně uprostřed mezi $A$ a $A'$.]

== Jak sestrojit obraz útvaru

+ Spoj vrchol $A$ se středem $S$.
+ Na opačné straně od $S$ vyznač $A'$ ve stejné vzdálenosti.
+ Stejně sestroj obrazy dalších vrcholů.
+ Obrazy vrcholů spoj ve stejném pořadí.

== Trojúhelník a jeho obraz

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    line((-3, 1), (-2, 3), stroke: (paint: rgb("#457b9d"), thickness: 1.5pt))
    line((-2, 3), (-1, 1), stroke: (paint: rgb("#457b9d"), thickness: 1.5pt))
    line((-1, 1), (-3, 1), stroke: (paint: rgb("#457b9d"), thickness: 1.5pt))

    line((3, -1), (2, -3), stroke: (paint: rgb("#e76f51"), thickness: 1.5pt))
    line((2, -3), (1, -1), stroke: (paint: rgb("#e76f51"), thickness: 1.5pt))
    line((1, -1), (3, -1), stroke: (paint: rgb("#e76f51"), thickness: 1.5pt))

    line((-3, 1), (3, -1), stroke: 0.6pt)
    line((-2, 3), (2, -3), stroke: 0.6pt)
    line((-1, 1), (1, -1), stroke: 0.6pt)

    circle((0, 0), radius: 0.12, fill: rgb("#e76f51"), stroke: 0.5pt)
    content((0.15, 0.2), [$S$])
    content((-3.35, 1.2), [$A$])
    content((-2.25, 3.25), [$B$])
    content((-0.8, 1.25), [$C$])
    content((3.1, -0.8), [$A'$])
    content((2.1, -3.25), [$B'$])
    content((0.65, -1.35), [$C'$])
  })
]

#align(center)[Obraz má stejný tvar i velikost; je otočený o půl otáčky.]

== Závěrečná kontrola

- Zkrať: $frac(21, 35)$
- Vypočítej: $frac(3, 4) - frac(1, 6)$
- Jak ověříš, že $A'$ je obraz bodu $A$ ve středu $S$?

#v(0.4em)

*Pamatuj:* stejný jmenovatel; $S$ leží uprostřed mezi $A$ a $A'$.
