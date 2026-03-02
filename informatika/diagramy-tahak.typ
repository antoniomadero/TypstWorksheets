#set page(width: 210mm, height: 297mm, margin: (top: 10mm, left: 10mm, right: 10mm, bottom: 10mm), flipped: true)
#set text(size: 10pt)
#show raw: set text(fill: blue)
#show raw.where(lang: "mermaid"): it => block(
  fill: rgb(230, 245, 255),
  inset: 1em,
  radius: 1em,
  width: 100%,
  stroke: 1pt + rgb(120, 170, 220),
  text(font: "Courier New", weight: "bold", top-edge: 1em, fill: navy, size: 0.9em, it),
)


#grid(
  columns: (5fr, 3fr, 4fr),
  gutter: 1cm,
  [
    = Vývojové diagramy v Mermaid
    == 1. Účel a didaktické využití
    - jednoduchá textová syntaxe,
    - okamžitý vizuální výstup,
    - ideální pro výuku sekvence, větvení a cyklů,
    - funguje v Markdownu (VS Code, Obsidian, GitHub),
    - žáci nemusí kreslit ručně – mění jen text.

    == 2. Základní struktura Mermaid diagramu
    ```markdown
    ```mermaid
    flowchart TD


    - `flowchart` — typ diagramu
    - `TD` — směr shora dolů (Top → Down)
      Další směry: `LR`, `RL`, `BT`


    == 3. Základní tvary a jejich použití

    #table(
      columns: 3,
      align: (left, left, left),
      table.header([*Tvar*], [*Syntaxe*], [*Význam*]),
      [Start / Stop], [`A([Start])`], [Začátek a konec algoritmu],

      [Proces], [`A[Udělám něco]`], [Instrukce, krok,],
      [Vstup / Výstup], [`A[/Načti X/]`], [Čtení nebo výpis],
      [Rozhodnutí], [`A{Podmínka?}`], [IF, větvení],
      [Konektor], [`A((K))`], [Spojovací bod],
    )

    == 4. Spojování bloků
    - `A --> B` — běžná šipka
    - `A -->|ano| B` — šipka s popiskem
    - `A -.-> B` — tečkovaná šipka
    - `A --- B` — spojení bez šipky

  ],
  [
    == 5. Typické konstrukce pro výuku

    === 5.1 Sekvence

    ```mermaid
    mermaid
    flowchart TD
      A([Start]) --> B[Načti číslo]
      B --> C[Vypočítej dvojnásobek]
      C --> D[/Vypiš výsledek/]
      D --> E([Konec])
    ```

    === 5.2 Podmínka (IF)
    ```mermaid
      mermaid
      flowchart TD
      A([Start]) --> B[Načti číslo]
      B --> C{Je číslo > 0?}
      C -->|Ano| D[/Kladné/]
      C -->|Ne| E[/Není kladné/]
      D --> F([Konec])
      E --> F
    ```
    === 5.3 Cyklus (WHILE)
    ```mermaid
      mermaid
      flowchart TD
      A([Start]) --> B[i = 1]
      B --> C{Je i ≤ 5?}
      C -->|Ano| D[/Vypiš i/]
      D --> E[i = i + 1]
      E --> C \
      C -->|Ne| F([Konec])
    ```
    === 5.4 Součet dvou čísel
    ```mermaid
     mermaid
     flowchart TD
     A([Start]) --> B[/Načti A/]
     B --> C[/Načti B/]
     C --> D[Součet = A + B]
     D --> E[/Vypiš Součet/]
     E --> F([Konec])
    ```
  ],
  [

    == 6. Doporučení pro výuku
    - Začít se sekvencí, pokračovat podmínkou, nakonec cyklus.
    - Nechat žáky nejprve popsat algoritmus slovy.
    - Zdůraznit, že diagram je model myšlení, ne kreslení.
    - Mermaid umožňuje rychlé úpravy – žáci vidí okamžitou změnu.
    - Využívat náhled v Markdownu (VS Code).

    ---

    == 7. Stylování (volitelné)

    === Zvýraznění vstupů a výstupů
    ```markdown
    classDef input fill:#D6EAF8,stroke:#1B4F72;
    classDef output fill:#D5F5E3,stroke:#1D8348;

    class B,C input;
    class D output;

    classDef decision fill:#FDEDEC,stroke:#922B21,stroke-width:2px;
    class C decision;
    ```

    == 8. Nejčastější chyby žáků

    - chybějící Start/Konec,

    - větvení bez dvou cest,

    - cyklus bez návratu,

    - příliš dlouhé popisy kroků,

    - záměna vstupu a výstupu.

    == 9. Doporučené úlohy pro žáky

    - Zjisti, zda je číslo sudé.

    - Vypiš čísla 1–10.

    - Spočítej součet dvou čísel.

    - Najdi největší ze dvou čísel.

    - Opakuj dotaz, dokud žák nezadá číslo větší než 0.
  ],
)
