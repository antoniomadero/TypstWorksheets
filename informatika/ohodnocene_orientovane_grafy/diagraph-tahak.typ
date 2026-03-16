#show raw.where(lang: "diagraph"): it => block(
  fill: rgb(230, 245, 255),
  inset: 1em,
  radius: 1em,
  width: 100%,
  stroke: 1pt + rgb(120, 170, 220),
  text(font: "Courier New", weight: "bold", top-edge: 1em, fill: navy, size: 0.9em, it),
)
= Diagraph / Graphviz Tahák

== 1. Základní struktura
Pro orientované grafy (teorie grafů) používáme `digraph`.

```diagraph
  digraph G {
    layout=neato; // 'dot' je hierarchický, 'neato' je volnější
    node [shape=circle]; // všechny uzly budou kolečka

    A -> B [label='5']; // orientovaná hrana s váhou
    B -> C [label='10'];
    C -> A [label='2'];
  }
")h

```

== 2. Obousměrné šipky a hrany
V teorii grafů často potřebujeme dva směry mezi stejnými uzly.

```diagraph
  digraph G {
    rankdir=LR; // Zleva doprava

    // A) Dvě samostatné šipky (automaticky se ohnou, aby se nepřekrývaly)
    A -> B [label='tam'];
    B -> A [label='zpět'];

    // B) Jedna hrana se šipkami na obou koncích
    C -> D [dir=both, label='obousměrná'];

    // C) Smyčka (Self-loop)
    D -> D [label='smyčka'];
  }
")

```

== 3. Stylování (Atributy)
Můžete měnit barvy, tvary a tloušťku hran.

```diagraph
  digraph G {
    node [fontname='sans-serif', fillcolor='#eeeeee', style=filled];

    // Červená tlustá hrana
    A -> B [color=red, penwidth=2, label='kritická'];

    // Přerušovaná čára
    B -> C [style=dashed, label='možná'];

    // Dvojitý kruh pro koncový stav
    C [shape=doublecircle, color=blue];
  }
")

```

== 4. Užitečné tipy pro teorii grafů
*Váhy hran:* Používejte atribut `label='x'`.
*Layouty:* Pokud graf vypadá moc "stromovitě", zkuste na začátek přidat `layout=neato;` nebo `layout=circo;`.
*Seskupování:* Pokud chcete uzly udržet u sebe, použijte `subgraph`.
