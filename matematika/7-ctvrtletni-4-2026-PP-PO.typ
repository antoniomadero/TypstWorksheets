#set page(margin: (top: 1cm, right: 1.5cm, bottom: 1cm, left: 1.5cm))
#align(center)[= 4. čtvrtletní písemná práce  - 7. ročník]
#let m = h(0.35cm)

#let task-box(number, content, points) = {
  box(
    width: 100%,
    stroke: (left: 3pt + rgb("#2E5090")),
    fill: rgb("#F0F4F8"),
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
  [V městečku je 32 % domů s červenou střechou. Městečko má celkem 1500 domů. \ *_Kolik jich má červenou střechu?_*],
  "6",
)

#v(1fr)
*_Odpověď: :_*

#task-box(
  "2",
  [Encyklopedie má o 25 % více stran než atlas, který má 200 stran. \ *_Kolik stran má encyklopedie?_*],
  "6",
)

#v(1fr)
*_Odpověď: :_*

#task-box(
  "3",
  [Lednice stála po slevě 6650 Kč, sleva byla 30 %. \ *_Kolik stála před slevou?_*],
  "6",
)

#v(1fr)
*_Odpověď: :_*

#task-box(
  "4",
  [
    Vypočítej povrch a objem hranolu s podstavou #underline[lichoběžníku] \
    (a = 4 cm; b = 3,5 cm; c = 2cm; $v_a$ = 3 cm) a výškou hranolu $v_h$ = 5 cm.
  ],
  "6",
)


#v(1fr)
*_Povrch: :_* #h(1fr) *_Objem: :_* #h(2fr)

#pagebreak()

#task-box(
  "5",
  [Narýsuj síť čtyřbokého hranolu s podstavou #underline[kosočtverce] \ (a = 4 cm, $v_a$ = 2 cm) a výškou $v_h$ = 3,5 cm.],
  "6",
)

#v(12cm)


#task-box(
  "6",
  [Vypočítej povrch a objem hranolu z cvičení 6.],
  "6",
)

#v(6cm)
*_Povrch: :_* #h(1fr) *_Objem: :_* #h(2fr)

#v(1fr)
#align(center)[
  #image("/assets/image.png")
  Body #m > #m 32 #m > #m 27 #m >#m  18 #m > #m 9 #m > #m body ]

