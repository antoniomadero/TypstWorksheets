#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

#set page(width: auto, height: auto, margin: 1cm)

= Příklad: Nejkratší cesta v ohodnoceném grafu

Hledáme nejkratší cestu z vrcholu *A* do vrcholu *D*.
Čísla u hran představují jejich váhy (vzdálenosti).

#figure(
  diagram(
    spacing: 3cm,
    node-fill: white,
    node-stroke: 1pt,
    node-corner-radius: 0.6cm,

    node((0, 0), [*A*], name: <A>, fill: green.lighten(80%)),
    node((1, 1), [*B*], name: <B>),
    node((1, -1), [*C*], name: <C>),
    node((2, 0), [*D*], name: <D>, fill: red.lighten(80%)),

    edge(<A>, <B>, [7], "->"),
    edge(<A>, <C>, [3], "->"),
    edge(<C>, <B>, [1], "->", stroke: blue, label-side: left),
    edge(<B>, <D>, [2], "->"),
    edge(<C>, <D>, [8], "->"),

    edge(<A>, <C>, stroke: 2pt + green),
    edge(<C>, <B>, stroke: 2pt + green),
    edge(<B>, <D>, stroke: 2pt + green),
  ),
  caption: [Graf pro demonstraci Dijkstrova algoritmu],
)
