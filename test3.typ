// Nastavení stránky na formát A4 na šířku
#set page(paper: "a4", flipped: true, margin: 1.5cm)
#set text(font: "Linux Libertine", lang: "cs", size: 11pt)

// Definice barev
#let c-eng = rgb("bbdefb")   // Modrá (Inženýr)
#let c-nav = rgb("ffe0b2")   // Oranžová (Navigátor)
#let c-neut = rgb("f5f5f5")  // Šedá (Společná chodba)
#let c-alert = rgb("ffcdd2") // Červená (Krize)
#let c-bonus = rgb("fff59d") // Žlutá (Bonus)

// Pomocné funkce pro nativní tvary (čistý Typst)
#let n-circ(c, t) = circle(radius: 1.6em, fill: c, stroke: 1.5pt)[#set align(center + horizon); #t]
#let n-rect(c, t) = rect(width: 5em, height: 3.5em, radius: 5pt, fill: c, stroke: 1.5pt)[#set align(
    center + horizon,
  ); #t]

#grid(
  columns: (1.1fr, 2.9fr),
  gutter: 2em,

  // LEVÝ SLOUPEC: PRAVIDLA A PŘÍBĚH
  [
    = Záchrana stanice
    *Kooperativní i soutěžní hra pro 2 hráče*
    #v(1em)

    Stanice je poškozena! Abychom ji zachránili, musíte dojít k hlavnímu reaktoru. Každý krok vyžaduje kalibraci (správný výpočet příkladu, který si táhnete z balíčku).

    *Role hráčů:*
    Dohodněte se, kdo z vás je jaká role:

    🟦 *Systémový inženýr (Modrý)* \
    🟧 *Specialista navigace (Oranžový)*

    *Pravidla tahu:*
    1. Hoď kostkou a posuň se.
    2. Táhni si kartu a vypočítej příklad s desetinnými čísly.
    3. Spoluhráč tě zkontroluje.
    4. *Správně?* Zůstáváš na místě.
    5. *Špatně?* Vracíš se tam, odkud jsi vyšel.

    *Barvy polí a speciální efekty:*
    - *Tvoje barva:* Jsi ve svém živlu! Pokud příklad vypočítáš správně, *házíš ještě jednou*.
    - *Barva soupeře:* Cizí systémy. Pokud uděláš chybu, vracíš se o *2 pole zpět*.
    - *Šedá:* Neutrální pole, platí běžná pravidla.
    - 🟥 *Zkrat / Kyslík:* Pokud zde uděláš chybu, jedno kolo stojíš!
    - 🟨 *Čip:* Systém naskočil. Nepočítáš příklad a jdeš rovnou o 1 pole vpřed.

    #v(2em)
    *Kdo první dorazí k reaktoru, zachrání stanici a vyhrává!*
  ],

  // PRAVÝ SLOUPEC: HERNÍ PLÁN (NATIVNÍ TYPST KRESLENÍ)
  [
    #align(center + horizon)[
      // Nastavení rozestupů mřížky
      #let cs-x = 3.3cm // Horizontální mezera
      #let cs-y = 3.6cm // Vertikální mezera

      // Obalový kontejner pro hru
      #box(width: 4 * cs-x + 5em, height: 2 * cs-y + 3.5em)[

        // 1. VYKRESLENÍ SPOJOVACÍCH ČAR (vykreslí se na pozadí)

        // Řada 1 (vodorovně zleva doprava)
        #for i in range(0, 4) {
          place(dx: i * cs-x + 2.5em, dy: 1.75em, line(length: cs-x, stroke: 2pt))
        }
        // Zatáčka dolů vpravo
        #place(dx: 4 * cs-x + 2.5em, dy: 1.75em, line(angle: 90deg, length: cs-y, stroke: 2pt))

        // Řada 2 (vodorovně zprava doleva)
        #for i in range(0, 4) {
          place(dx: i * cs-x + 2.5em, dy: cs-y + 1.75em, line(length: cs-x, stroke: 2pt))
        }
        // Zatáčka dolů vlevo
        #place(dx: 2.5em, dy: cs-y + 1.75em, line(angle: 90deg, length: cs-y, stroke: 2pt))

        // Řada 3 (vodorovně zleva doprava)
        #for i in range(0, 4) {
          place(dx: i * cs-x + 2.5em, dy: 2 * cs-y + 1.75em, line(length: cs-x, stroke: 2pt))
        }

        // 2. VYKRESLENÍ UZLŮ (vykreslí se navrch a překryjí protnuté čáry)

        // Zjednodušená funkce pro vložení uzlu na pozici
        #let p(x, y, content) = place(dx: x * cs-x, dy: y * cs-y, box(width: 5em, height: 3.5em, align(
          center + horizon,
          content,
        )))

        // Řada 1
        #p(0, 0, n-rect(rgb("c8e6c9"), [*START* \ Komora]))
        #p(1, 0, n-circ(c-eng, [*1*]))
        #p(2, 0, n-circ(c-nav, [*2*]))
        #p(3, 0, n-circ(c-alert, [*3*\ Zkrat!]))
        #p(4, 0, n-circ(c-eng, [*4*]))

        // Řada 2 (číslujeme pozpátku 4-3-2-1-0, ale pozice X je stejná zleva doprava)
        #p(4, 1, n-circ(c-neut, [*5*]))
        #p(3, 1, n-circ(c-nav, [*6*]))
        #p(2, 1, n-circ(c-bonus, [*7*\ Čip]))
        #p(1, 1, n-circ(c-eng, [*8*]))
        #p(0, 1, n-circ(c-nav, [*9*]))

        // Řada 3
        #p(0, 2, n-circ(c-alert, [*10*\ Kyslík!]))
        #p(1, 2, n-circ(c-eng, [*11*]))
        #p(2, 2, n-circ(c-neut, [*12*]))
        #p(3, 2, n-circ(c-nav, [*13*]))
        #p(4, 2, n-rect(rgb("ffcc80"), [*CÍL* \ Reaktor]))
      ]
    ]
  ],
)
