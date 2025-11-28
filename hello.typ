#import "@preview/cetz:0.2.2": *

#set page(paper: "a4", margin: 1.4cm, numbering: "1")
#set text(font: ("New Computer Modern"), size: 11pt, lang: "cs")
#set par(justify: true)
#set heading(numbering: none)
#show heading: it => block(inset: (y: 8pt), stroke: (bottom: 1.2pt + gray), above: 14pt, below: 10pt, it)
#show math.equation: set text(font: "New Computer Modern")

#align(center)[
  #text(19pt, weight: "bold")[Typst – šmírák pro učitele matematiky]
  #linebreak()
  #text(13pt, weight: "semibold")[všechno nejdůležitější na dvou A4]
  #linebreak()
  #text(10pt)[v0.11+ • #datetime.today().display("[day]. [month]. [year]")]
]

#columns(2, gutter: 15pt)[

=== Základní formátování
*tučně*   /kurzíva/   _podtržení_  
super^{2}   sub~i~   ~přeškrtnuté~  
#text(red)[červeně]   #highlight(fill: yellow)[žlutě]

=== Nadpisy a výčty
= H1   == H2   === H3   ==== H4  
- bod   + podbod   1. číslovaný   a) podúroveň  
/ Term:   definice (slovník)

=== Rovnice
Inline: $a^2 + b^2 = c^2$  
Číslovaná: $ a^2 + b^2 = c^2 $ <pyth>  
Bez čísla: $ sum_(k=1)^n k = n(n+1)/2 $

=== Symboly (kopíruj přímo)
$ ± ∞ ∫ ∬ ∭ ∮ ∝ √ ∛ ≡ ≅ ≈ ∼ ≃ ≲ ≳ ⊆ ⊇ ⊂ ⊃ ∪ ∩ ∅ ∠ ∇ ∆ ∂ ∀ ∃ ∄ ∴ ∵ → ↦ ⇒ ⇐ ⇔ $

=== Limity ∙ součty ∙ integrály
$ lim_(x→∞) (1 + 1/x)^x = e $  
$ sum_(k=1)^∞ 1/k^2 = π^2/6 $  
$ ∫_0^∞ e^(-x^2) dif x = √π/2 $  
$ ∫∫_D f(x,y) dif A $

=== Zlomky ∙ binomy ∙ cases
$ frac(a,b) quad binom(n,k) $  
$ x = cases(1 quad x≥0, -1 quad x<0) $

=== Matice
$ mat(1,2; 3,4) quad mat(delim:"|",1,2;3,4) $  
$ mat(1,2,3; 4,5,6; 7,8,9) $

=== Tabulka hodnot
#table(columns: 7,
  [$x$],[-2],[-1],[0],[1],[2],[3],
  [$x^2$],[4],[1],[0],[1],[4],[9],
)

=== Definice / věta
#rect(stroke: (left: 3pt + blue), radius: 6pt, inset: 11pt)[
  *Věta (Pythagoras)*  
  V pravoúhlém trojúhelníku platí $a^2 + b^2 = c^2$.
]

=== Geometrie (CeTZ)

=== Šipky mezi kroky
$ => quad ⇒ quad arrow.r quad arrow.r.r $


=== Číslování podle kapitol
#set math.equation(numbering: "(1.a)")
$ E = m c^2 $   // (1.a)
$ F = m a $     // (1.b)

=== Krabice na tabuli
#box(width: 100%, inset: 20pt, stroke: 3pt + orange, radius: 10pt)[
  #text(16pt, weight: "bold")[ŘEŠENÍ]
  #v(10pt)
  Sem píšeš postup…
]

=== 8 top snippetů pro VS Code
(do Tinymist → Settings → typst.snippets)

```json
{
  "rov": "$ ${1} $ <${2}>",
  "eq": "$ ${1} $",
  "fr": "frac(${1}, ${2})",
  "lim": "lim_(x→${1}) ${2}",
  "sum": "sum_(k=${1})^${2} ${3}",
  "int": "∫_${1}^${2} ${3} dif x",
  "mat2": "mat(${1}, ${2}; ${3}, ${4})",
  "def": "#rect(stroke:(left:3pt+blue),inset:10pt,radius:6pt)[*${1}* ${0}]"
}
```

]

#v(1fr)
#align(center)[#text(10pt, gray)[
Vytvořil Grok • aktualizováno #datetime.today().display("[year]")
]]