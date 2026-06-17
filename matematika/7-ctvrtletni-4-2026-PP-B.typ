#set page(margin: (top: 1cm, right: 1.5cm, bottom: 1cm, left: 1.5cm))
#align(center)[= 4. čtvrtletní písemná práce  - 7. ročník]
#let m = h(0.35cm)

#let task-box(number, content, points) = {
  box(
    width: 100%,
    stroke: (left: 3pt + rgb("#e02e81")),
    fill: rgb("#fae5fa"),
    inset: 12pt,
  )[
    #text(weight: "bold", size: 11pt)[#number. ]
    #content
    #h(1fr)
    #text(size: 9pt, fill: rgb("#666666"))[#points bodů]
  ]
}

Jméno a příjmení: #h(3fr)  Body:  #h(1fr)Známka:

#task-box(
  "1",
  [Městečko má celkem 1500 domů. 27 % z nich má červenou střechu. \ *_Kolik jich má červenou střechu?_*],
  "5",
)

#v(1fr)
*_Odpověď: :_*

#task-box(
  "2",
  [V roce 2020 firma vyrobila 450 výrobků. Jak v roce 2021, tak v roce 2022 vyrobila firma vždy o 20 % výrobků více než v předchozím roce. *_Kolik výrobků vyrobila firma v roce 2022?_*],
  "5",
)

#v(1fr)

*_Odpověď: :_*

#task-box(
  "3",
  [Encyklopedie má o 20 % více stran než atlas, který má 200 stran. \ *_Kolik stran má encyklopedie?_*],
  "5",
)

#v(1fr)
*_Odpověď: :_*

#task-box(
  "4",
  [Lednice stála po slevě 7350 Kč, sleva byla 30 %. \ *_Kolik stála před slevou?_*],
  "5",
)

#v(1fr)
*_Odpověď: :_*
#pagebreak()

#task-box(
  "5",
  [
    Vypočítej povrch a objem hranolu s podstavou #underline[lichoběžníku] \
    (a = 4 cm; b = 3 cm; c = 2cm; $v_a$ = 2 cm) a výškou hranolu $v_h$ = 5 cm.
  ],
  "5",
)


#v(1fr)
*_Povrch: :_* #h(1fr) *_Objem: :_* #h(2fr)

#task-box(
  "6",
  [Narýsuj síť čtyřbokého hranolu s podstavou #underline[kosočtverce] \ (a = 3,5 cm, $v_a$ = 2 cm) a výškou $v_h$ = 3 cm."],
  "5",
)

#v(8cm)


#task-box(
  "7",
  [Vypočítej povrch a objem hranolu z cvičení 6.],
  "5",
)

#v(1fr)
*_Povrch: :_* #h(1fr) *_Objem: :_* #h(2fr)


#task-box(
  "8",
  [Vypočítej _povrch a objem_ čtyřbokého hranolu s podstavou #underline[kosodélníku] \ (a = 6 cm, b = 4,5 cm, $v_a$ = 4 cm). Výška hranolu $v_h$ = 12 cm.],
  "5",
)

#v(1fr)
*_Povrch: :_* #h(1fr) *_Objem: :_* #h(2fr)

#align(center)[
  #image("/assets/image.png")
  Body #m > #m 36 #m > #m 30 #m >#m  20 #m > #m 10 #m > #m body ]

