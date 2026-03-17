#set text(size: 11pt)

// --- Definice modrého rámečku pro postup ---
#let postup-box(body) = rect(
  fill: rgb("#eefaff"),
  stroke: (left: 4pt + blue),
  inset: 15pt,
  radius: 4pt,
  width: 100%,
  [
    #set text(fill: blue.darken(20%))
    *Postup řešení:*
    #body
  ],
)

= Trojčlenka

Trojčlenka je metoda pro řešení slovních úloh, kde známe tři údaje a čtvrtý ($x$) potřebujeme vypočítat. Základem je sestavení rovnosti dvou poměrů (úměry).

#postup-box([
  1. *Zápis:* Údaje stejného druhu napíšeme do sloupců pod sebe.
  2. *Určení úměry:* - #strong[Přímá úměra] (↑ ↑): Čím více, tím více. Šipky jdou stejným směrem.
    - #strong[Nepřímá úměra] (↑ ↓): Čím více, tím méně. Šipky jdou opačným směrem.
  3. *Sestavení úměry:* Podle směru šipek vytvoříme zlomky a vyřešíme rovnici pro $x$.
])



== Typy úměr v praxi

#table(
  columns: (1fr, 2fr, 1fr),
  inset: 10pt,
  align: horizon,
  stroke: gray + 0.5pt,
  [*Typ*], [*Příklad*], [*Logika*],
  [Přímá], [Nákup jablek (více kg $arrow.r$ vyšší cena)], [$plus.circle / plus.circle$],
  [Nepřímá], [Kopání příkopu (více dělníků $arrow.r$ méně času)], [$plus.circle / minus.circle$],
)

Výpočet následně vede k řešení rovnice ve tvaru:
$ x/a = b/c quad arrow.r.double quad x = (a dot b) / c $

---
