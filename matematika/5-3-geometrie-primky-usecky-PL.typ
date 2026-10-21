#import "@preview/touying:0.8.0": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Geometrie – přímky, úsečky a osy],
    subtitle: [5. ročník],
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
#set text(size: 32pt, weight: "bold")
== 1. Úsečka a její osa

Narýsuj úsečku $overline(A B)$ délky $8 "cm"$ a sestroj její osu $o$.

#v(0.6em)

Průsečík osy s úsečkou označ $S$. Zapiš:

#align(center)[
  #text(size: 24pt)[$S in o quad |A S| = |S B|$]
]

== 2. Kolmice bodem

Narýsuj přímku $p$ a bod $A$, pro který platí $A ∉ p$.

#v(0.6em)

Bodem $A$ veď přímku $k$ tak, aby $k perp p$.

#v(0.6em)

Průsečík přímek označ $P$.

#align(center)[
  #text(size: 30pt)[$A in k quad k perp p quad p ∩ k = {P}$]
]

== 3. Rovnoběžka bodem

Narýsuj přímku $p$ a bod $B$, pro který platí $B ∉ p$.

#v(0.6em)

Bodem $B$ narýsuj přímku $m$, pro kterou platí $m parallel p$.

#align(center)[
  #text(size: 30pt)[$B in m quad m parallel p quad p ∩ m = ∅$]
]

== 4. Přímky, které se protínají

Narýsuj přímky $p$ a $q$ tak, aby se protínaly, ale nebyly kolmé.

#v(0.6em)

Průsečík označ $S$ a zapiš jejich vzájemnou polohu.

#align(center)[
  #text(size: 30pt)[$p ∩ q = {S} quad p ∦ q quad p not perp q$]
]

== 5. Dvě rovnoběžky a příčka

Narýsuj dvě rovnoběžky $a$ a $b$ a přímku $r$, která protíná obě.

#v(0.6em)

Průsečíky označ $P$ a $Q$. Doplň:

#align(center)[
  #text(size: 30pt)[$a parallel b quad a ∩ r = {P} quad b ∩ r = {Q} quad P ≠ Q$]
]

== 6. Osa, rovnoběžka a průsečík

Narýsuj přímku $p$ a na ní úsečku $overline(A B)$ délky $6 "cm"$.

#v(0.6em)

Sestroj osu $o$ úsečky $overline(A B)$. Narýsuj přímku $q$ tak, aby
$q parallel p$ a $q != p$.

#v(0.6em)

Průsečík $o$ a $q$ označ $X$ a zapiš:

#align(center)[
  #text(size: 30pt)[$o ∩ q = {X}$]
]
