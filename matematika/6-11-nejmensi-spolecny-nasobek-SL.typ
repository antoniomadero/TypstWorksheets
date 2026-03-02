#set page(margin: 1cm)
#set text(size: 0.9em)
= Pracovní list: Nejmenší společný násobek - ŘEŠENÍ

== Rozděl na součin prvočísel

#grid(
  columns: 2,
  gutter: 4cm,

  [
    #set par(leading: 1.8em)
    a) 48 = 2^4 · 3 \
    b) 180 = 2^2 · 3^2 · 5 \
  ],
  [
    #set par(leading: 1.8em)
    c) 210 = 2 · 3 · 5 · 7 \
    d) 140 = 2^2 · 5 · 7 \
  ]
)

== Najdi nejmenší společný násobek

#grid(
  columns: 2,
  gutter: 4.5cm,

  [
    #set par(leading: 2em)
    a) n(15, 35) = 105 \
       _15 = 3 · 5_  \
       _35 = 5 · 7_  \
       _n = 3 · 5 · 7 = 105_ \
       
    b) n(12, 18) = 36 \
       _12 = 2^2 · 3_  \
       _18 = 2 · 3^2_  \
       _n = 2^2 · 3^2 = 36_ \
       
    c) n(210, 140) = 420 \
       _210 = 2 · 3 · 5 · 7_  \
       _140 = 2^2 · 5 · 7_  \
       _n = 2^2 · 3 · 5 · 7 = 420_ \
  ],
  [
    #set par(leading: 2em)
    d) n(180, 120) = 360 \
       _180 = 2^2 · 3^2 · 5_  \
       _120 = 2^3 · 3 · 5_  \
       _n = 2^3 · 3^2 · 5 = 360_ \
       
    e) n(48, 64) = 192 \
       _48 = 2^4 · 3_  \
       _64 = 2^6_  \
       _n = 2^6 · 3 = 192_ \
       
    f) n(36, 54) = 108 \
       _36 = 2^2 · 3^2_  \
       _54 = 2 · 3^3_  \
       _n = 2^2 · 3^3 = 108_ \
  ]
)

== Slovní úlohy - řešení

+ *Zvony*
  - První zvon: každých 8 minut
  - Druhý zvon: každých 12 minut
  - 8 = 2^3, 12 = 2^2 · 3
  - n(8, 12) = 2^3 · 3 = 24 minut
  - *Odpověď: Zvony se rozezní současně za 24 minut.*

+ *Setkávání kamarádů*
  - 1. kamarád: každých 4 dny
  - 2. kamarád: každých 6 dní
  - 3. kamarád: každých 9 dní
  - 4 = 2^2, 6 = 2 · 3, 9 = 3^2
  - n(4, 6, 9) = 2^2 · 3^2 = 36 dní
  - *Odpověď: Všichni tři kamarádi se setkají za 36 dní.*

+ *Blikající lampy*
  - 1. lampa: každých 6 sekund
  - 2. lampa: každých 8 sekund
  - 3. lampa: každých 18 sekund
  - 6 = 2 · 3, 8 = 2^3, 18 = 2 · 3^2
  - n(6, 8, 18) = 2^3 · 3^2 = 72 sekund
  - *Odpověď: Všechny tři lampy zablikají současně za 72 sekund (1 minuta 12 sekund).*

+ *Autobusy*
  - 1. autobus: každých 20 minut
  - 2. autobus: každých 30 minut
  - 20 = 2^2 · 5, 30 = 2 · 3 · 5
  - n(20, 30) = 2^2 · 3 · 5 = 60 minut
  - *Odpověď: Oba autobusy odjedou společně za 60 minut (1 hodina).*
