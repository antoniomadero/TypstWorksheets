#set page(width: 210mm, height: 297mm, margin: 12mm, flipped: true)
#set text(size: 11pt)
#set heading(numbering: none)

= Vývojové diagramy – základní přehled


#columns(2)[

  #box(
    fill: rgb(235, 240, 255),
    inset: 10pt,
    radius: 8pt,
    stroke: 1pt + rgb(120, 150, 220),
    [
      🧠 *Vývojový diagram* ukazuje, jak postupuje program krok za krokem.
      Pomáhá pochopit, co počítač dělá a v jakém pořadí.
    ],
  )

  == Základní tvary

  #table(
    columns: 3,
    align: (left, left, left),
    stroke: none,

    [*Tvar*], [*Ikona*], [*Co znamená*],

    [Start / Konec], ["🔵"], ["Začátek nebo konec programu"],

    [Proces], ["⬜"], ["Krok programu (něco se provede)"],

    [Vstup / Výstup], ["▱"], ["Načtení nebo vypsání hodnoty"],
    [Rozhodnutí], ["🔷"], ["Otázka s odpovědí ANO/NE"],
  )

  == Jak se spojují tvary
  - `A --> B` běžná šipka
  - `A -->|ano| B` šipka s popiskem
  - `A -.-> B` tečkovaná šipka

  == Příklad: Sekvence (kroky za sebou)

  #box(
    fill: rgb(230, 245, 255),
    inset: 10pt,
    radius: 8pt,
    stroke: 1pt + rgb(120, 170, 220),
    [
      ```markdown
      mermaid
      flowchart TD
      A([Start]) --> B[Načti číslo]
      B --> C[Vypočítej dvojnásobek]
      C --> D[/Vypiš výsledek/]
      D --> E([Konec])

      ```
    ],
  )
  #colbreak()

  == Příklad: Podmínka (IF)

  #box(
    fill: rgb(255, 240, 230),
    inset: 10pt,
    radius: 8pt,
    stroke: 1pt + rgb(220, 150, 120),
    [
      ```markdown
      mermaid
      flowchart TD
      A([Start]) --> B[Načti číslo]
      B --> C{Je číslo > 0?}
      C -->|Ano| D[/Kladné/]
      C -->|Ne| E[/Není kladné/]
      D --> F([Konec])
      E --> F

      ```
    ],
  )

  == Příklad: Cyklus (opakování)

  #box(
    fill: rgb(235, 255, 235),
    inset: 10pt,
    radius: 8pt,
    stroke: 1pt + rgb(150, 200, 150),
    [
      ```markdown
      mermaid
      flowchart TD
      A([Start]) --> B[i = 1]
      B --> C{Je i ≤ 5?}
      C -->|Ano| D[/Vypiš i/]
      D --> E[i = i + 1]
      E --> C
      C -->|Ne| F([Konec])

      ```
    ],
  )

  == Úkoly pro tebe
  - Nakresli vývojový diagram, který zjistí, zda je číslo sudé.
  - Vytvoř diagram, který vypíše čísla 1 až 5.
  - Nakresli diagram, který se ptá na číslo, dokud není větší než 0.

  #box(
    fill: rgb(245, 245, 245),
    inset: 10pt,
    radius: 8pt,
    stroke: 1pt + gray,
    [
      💡 *Tip:* Nejprve si řekni, co má program dělat. Pak to převeď do tvarů – krok za krokem.
    ],
  )
]
