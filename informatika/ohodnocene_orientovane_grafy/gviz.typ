#import "@preview/gviz:0.1.0": *

#show raw.where(lang: "dot-render"): it => render-image(it.text)

```dot-render
digraph mygraph {
  node [shape=box];
  A -> B;
  B -> C;
  B -> D;
  C -> E;
  D -> E;
  E -> F;
  A -> F [label="5"];
  F -> A [label="5"];
  D -> F [label="5"];
}```

#let my-graph = "digraph {A -> B}"
#render-image(my-graph)

SVG:
#raw(render(my-graph), block: true, lang: "svg")
