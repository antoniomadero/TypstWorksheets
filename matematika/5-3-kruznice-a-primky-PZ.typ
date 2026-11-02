#import "@preview/touying:0.8.0": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Kružnice a přímky],
    subtitle: [5. ročník – konstrukční úlohy],
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

== Co budeš potřebovat

- kružítko, pravítko a tužku
- přesné rýsování a pečlivé označování bodů
- zápisy pro kružnice, přímky a jejich průsečíky

#v(0.7em)

*Cíl:* Narýsovat podle matematického zápisu a určit vzájemnou polohu útvarů.

== Jak číst zápis

#block[
  $k(O; 3 "cm")$

  Kružnice $k$ se středem $O$ a poloměrem $3 "cm"$.
]

#v(0.6em)

#block[
  $A in k quad p ∩ k = {A, B}$

Bod $A$ leží na kružnici. Přímka $p$ protíná kružnici v bodech $A$ a $B$.
]

== Úloha 1 – průměr kružnice

Narýsuj kružnici $k(O; 3 "cm")$.

#v(0.5em)

Zvol bod $A in k$. Bodem $O$ a bodem $A$ narýsuj přímku $p$.

#v(0.5em)

Její druhý průsečík s kružnicí označ $B$.

#align(center)[
  #text(size: 34pt)[$O in p quad p ∩ k = {A, B}$]
]

Zapiš délky poloměrů $|O A|$ a $|O B|$.

== Úloha 2 – dvě kružnice

Narýsuj úsečku $overline(A B)$ délky $4 "cm"$.

#v(0.5em)

Narýsuj kružnici $k(A; 3 "cm")$ a kružnici $l(B; 2 "cm")$.

#v(0.5em)

Průsečíky kružnic označ $X$ a $Y$.

#align(center)[
  #text(size: 34pt)[$|A B| = 4 "cm" quad k ∩ l = {X, Y}$]
]

Jaká je vzájemná poloha kružnic?

== Úloha 3 – přímka a kružnice

Zvol body $O$ a $H$ tak, aby $|O H| = 2 "cm"$.

#v(0.5em)

Bodem $H$ narýsuj přímku $p$, která je kolmá na přímku $O H$.

#v(0.5em)

Narýsuj kružnici $k(O; 3 "cm")$. Průsečíky s přímkou $p$ označ $A$ a $B$.

#align(center)[
  #text(size: 34pt)[$H in p quad p perp O H quad p ∩ k = {A, B}$]
]

== Úloha 4 – kružnice bez průsečíku

Narýsuj úsečku $overline(A B)$ délky $7 "cm"$.

#v(0.5em)

Narýsuj kružnici $k(A; 3 "cm")$ a kružnici $l(B; 2 "cm")$.

#v(0.5em)

#align(center)[
  #text(size: 34pt)[$|A B| = 7 "cm" quad k ∩ l = ∅$]
]

Kružnice se neprotínají. Ověř to na svém náčrtku.

== Úloha 5 – rovnoběžky a příčka

Narýsuj dvě různé rovnoběžné přímky $a$ a $b$.

#v(0.5em)

Narýsuj přímku $r$, která protíná obě rovnoběžky.

#v(0.5em)

Průsečík $a$ s $r$ označ $P$, průsečík $b$ s $r$ označ $Q$.

#align(center)[
  #text(size: 34pt)[$a parallel b quad a ∩ r = {P} quad b ∩ r = {Q} quad P ≠ Q$]
]

== Kontrola

#block[
  *1.* $|O A| = |O B| = 3 "cm"$; úsečka $overline(A B)$ je průměr.
]

#v(0.3em)

#block[
  *2.* Kružnice se protínají ve dvou bodech: $k ∩ l = {X, Y}$.
]

#v(0.3em)

#block[
  *3.* Přímka je sečna kružnice: $p ∩ k = {A, B}$.
]

#v(0.3em)

#block[
  *4.* Kružnice jsou vnější a nemají společný bod: $k ∩ l = ∅$.
]

#v(0.3em)

#block[
  *5.* Přímka $r$ protíná každou rovnoběžku právě v jednom bodě.
]
