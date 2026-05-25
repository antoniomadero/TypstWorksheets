#set page(
  margin: 1.5cm,
)

#set text(
  font: "DejaVu Sans",
  size: 11pt,
)

#set par(justify: false)

#align(center)[
  #text(18pt, weight: "bold")[Přehled obvodů a obsahů rovinných obrazců]
]

#v(0.5cm)

#table(
  columns: (2.8cm, 5.5cm, 5.5cm),
  stroke: 0.7pt + gray,
  inset: 8pt,
  fill: (x, y) => {
    if y == 0 { rgb("#DCEEFF") } else if calc.even(y) { rgb("#F8FBFF") } else { white }
  },

  [*Obrazec*], [*Obvod \(o\)*], [*Obsah \(S\)*],

  [Trojúhelník], [$o = a + b + c$], [$S = (a dot v_a) / 2$],

  [Pravoúhlý trojúhelník], [$o = a + b + c$], [$S = (a dot b) / 2$],

  [Čtverec], [$o = 4a$], [$S = a^2$],

  [Obdélník], [$o = 2(a + b)$], [$S = a dot b$],

  [Rovnoběžník], [$o = 2(a + b)$], [$S = a dot v_a$],

  [Kosodélník], [$o = 2(a + b)$], [$S = a dot v_a$],

  [Kosočtverec], [$o = 4a$], [$S = a dot v_a$],

  [Lichoběžník], [$o = a + b + c + d$], [$S = ((a + c) dot v) / 2$],
)

#v(0.5cm)

#text(9pt, fill: gray)[
  Kde:
  $v_a$ je výška na stranu $a$,
  $v$ je výška lichoběžníku,

]

= Hranoly – výpočet povrchu a objemu

U každého příkladu vypočítej:
- obsah podstavy $S_p$,
- obvod podstavy $o$,
- povrch $S$,
- objem $V$.

#v(0.3cm)

1. *Trojboký hranol*
  Podstavou je trojúhelník se stranou $a = 8 "cm"$, výškou na tuto stranu $v_a = 5 "cm"$
  a dalšími stranami $6 "cm"$ a $7 "cm"$.
  Výška hranolu je $12 "cm"$.

2. *Trojboký hranol*
  Podstavou je pravoúhlý trojúhelník s odvěsnami $9 "cm"$ a $12 "cm"$
  a přeponou $15 "cm"$.
  Výška hranolu je $10 "cm"$.

3. *Čtyřboký hranol*
  Podstavou je čtverec o straně $a = 6 "cm"$.
  Výška hranolu je $14 "cm"$.

4. *Čtyřboký hranol*
  Podstavou je obdélník o rozměrech $8 "cm"$ a $5 "cm"$.
  Výška hranolu je $9 "cm"$.

5. *Čtyřboký hranol*
  Podstavou je rovnoběžník se stranami $a = 10 "cm"$, $b = 6 "cm"$
  a výškou na stranu $a$ rovnou $4 "cm"$.
  Výška hranolu je $11 "cm"$.

6. *Čtyřboký hranol*
  Podstavou je kosodélník se stranami $a = 7 "cm"$, $b = 5 "cm"$
  a výškou na stranu $a$ rovnou $6 "cm"$.
  Výška hranolu je $8 "cm"$.

7. *Čtyřboký hranol*
  Podstavou je kosočtverec se stranou $a = 9 "cm"$
  a výškou $7 "cm"$.
  Výška hranolu je $10 "cm"$.

8. *Čtyřboký hranol*
  Podstavou je lichoběžník se základnami $12 "cm"$ a $8 "cm"$,
  rameny $5 "cm"$ a $5 "cm"$ a výškou $4 "cm"$.
  Výška hranolu je $9 "cm"$.

9. *Čtyřboký hranol*
  Podstavou je čtverec o straně $a = 4,5 "cm"$.
  Výška hranolu je $16 "cm"$.

10. *Čtyřboký hranol*
  Podstavou je obdélník o rozměrech $12 "cm"$ a $7 "cm"$.
  Výška hranolu je $6 "cm"$.