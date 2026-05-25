#import "@preview/diatypst:0.9.1": *

#show: slides.with(
  title: "Hranoly – povrch a objem",
  subtitle: "Podrobné řešení 10 příkladů",
  date: "2026",
  authors: "Typst Materiál",
  layout: "medium",
  ratio: 16 / 9,
  title-color: rgb("#0B4F6C"),
  bg-color: rgb("#F8FBFF"),
  count: "number",
  footer: true,
)

= Řešení příkladů

== Příklad 1 – trojboký hranol

Podstava je trojúhelník se stranou $a = 8"cm"$, výškou $v_a = 5"cm"$ a zbývajícími stranami $6"cm"$ a $7"cm"$. Výška hranolu je $v = 12"cm"$.

- Obsah podstavy: $S_p = (a dot v_a)/2 = (8 dot 5)/2 = 20"cm"^2$
- Obvod podstavy: $o = 8 + 6 + 7 = 21"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 20 + 21 dot 12 = 292"cm"^2$
- Objem: $V = S_p dot v = 20 dot 12 = 240"cm"^3$

== Příklad 2 – trojboký hranol (pravoúhlý)

Podstava je pravoúhlý trojúhelník s odvěsnami $9"cm"$ a $12"cm"$ a přeponou $15"cm"$. Výška hranolu je $v = 10"cm"$.

- Obsah podstavy: $S_p = (a dot b)/2 = (9 dot 12)/2 = 54"cm"^2$
- Obvod podstavy: $o = 9 + 12 + 15 = 36"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 54 + 36 dot 10 = 468"cm"^2$
- Objem: $V = S_p dot v = 54 dot 10 = 540"cm"^3$

== Příklad 3 – čtyřboký hranol (čtverec)

Podstava je čtverec se stranou $a = 6"cm"$. Výška hranolu je $v = 14"cm"$.

- Obsah podstavy: $S_p = a^2 = 6^2 = 36"cm"^2$
- Obvod podstavy: $o = 4a = 24"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 36 + 24 dot 14 = 408"cm"^2$
- Objem: $V = S_p dot v = 36 dot 14 = 504"cm"^3$

== Příklad 4 – čtyřboký hranol (obdélník)

Podstava je obdélník s rozměry $8"cm"$ a $5"cm"$. Výška hranolu je $v = 9"cm"$.

- Obsah podstavy: $S_p = a dot b = 8 dot 5 = 40"cm"^2$
- Obvod podstavy: $o = 2(a + b) = 2(8 + 5) = 26"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 40 + 26 dot 9 = 314"cm"^2$
- Objem: $V = S_p dot v = 40 dot 9 = 360"cm"^3$

== Příklad 5 – čtyřboký hranol (rovnoběžník)

Podstava je rovnoběžník se stranami $a = 10"cm"$, $b = 6"cm"$ a výškou $v_a = 4"cm"$ na stranu $a$. Výška hranolu je $v = 11"cm"$.

- Obsah podstavy: $S_p = a dot v_a = 10 dot 4 = 40"cm"^2$
- Obvod podstavy: $o = 2(a + b) = 2(10 + 6) = 32"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 40 + 32 dot 11 = 432"cm"^2$
- Objem: $V = S_p dot v = 40 dot 11 = 440"cm"^3$

== Příklad 6 – čtyřboký hranol (kosodélník)

Podstava je kosodélník se stranami $a = 7"cm"$, $b = 5"cm"$ a výškou na stranu $a$ rovnou $6"cm"$. Výška hranolu je $v = 8"cm"$.

- Obsah podstavy: $S_p = a dot v_a = 7 dot 6 = 42"cm"^2$
- Obvod podstavy: $o = 2(a + b) = 2(7 + 5) = 24"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 42 + 24 dot 8 = 276"cm"^2$
- Objem: $V = S_p dot v = 42 dot 8 = 336"cm"^3$

== Příklad 7 – čtyřboký hranol (kosočtverec)

Podstava je kosočtverec se stranou $a = 9"cm"$ a výškou $7"cm"$. Výška hranolu je $v = 10"cm"$.

- Obsah podstavy: $S_p = a dot v = 9 dot 7 = 63"cm"^2$
- Obvod podstavy: $o = 4a = 36"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 63 + 36 dot 10 = 486"cm"^2$
- Objem: $V = S_p dot v = 63 dot 10 = 630"cm"^3$

== Příklad 8 – čtyřboký hranol (lichoběžník)

Podstava je lichoběžník se základnami $a = 12"cm"$ a $c = 8"cm"$, rameny $5"cm"$ a $5"cm"$ a výškou $v = 4"cm"$. Výška hranolu je $v_h = 9"cm"$.

- Obsah podstavy: $S_p = (a + c)/2 dot v = (12 + 8)/2 dot 4 = 40"cm"^2$
- Obvod podstavy: $o = a + c + 5 + 5 = 30"cm"$
- Povrch: $S = 2S_p + o dot v_h = 2 dot 40 + 30 dot 9 = 350"cm"^2$
- Objem: $V = S_p dot v_h = 40 dot 9 = 360"cm"^3$

== Příklad 9 – čtyřboký hranol (čtverec)

Podstava je čtverec se stranou $a = 4,5"cm"$. Výška hranolu je $v = 16"cm"$.

- Obsah podstavy: $S_p = a^2 = 4,5^2 = 20,25"cm"^2$
- Obvod podstavy: $o = 4a = 18"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 20,25 + 18 dot 16 = 328,5"cm"^2$
- Objem: $V = S_p dot v = 20,25 dot 16 = 324"cm"^3$

== Příklad 10 – čtyřboký hranol (obdélník)

Podstava je obdélník s rozměry $12"cm"$ a $7"cm"$. Výška hranolu je $v = 6"cm"$.

- Obsah podstavy: $S_p = a dot b = 12 dot 7 = 84"cm"^2$
- Obvod podstavy: $o = 2(a + b) = 2(12 + 7) = 38"cm"$
- Povrch: $S = 2S_p + o dot v = 2 dot 84 + 38 dot 6 = 396"cm"^2$
- Objem: $V = S_p dot v = 84 dot 6 = 504"cm"^3$
