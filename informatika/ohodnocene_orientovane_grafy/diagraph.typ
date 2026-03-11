#import "@preview/diagraph:0.3.0": render

#render(
  "
  digraph G {
    rankdir=LR;
    node [shape=circle, width=0.7, fixedsize=true];
    A -> B [label=5,curvelines=true];
    B -> A [label=\"10\"];
    C -> A [dir=both, label=\"5\", curvelines=true];
    A -> D [label=\"6\", curvelines=true]
    D -> C [label=\"4\", curvelines=true]
    B -> D [dir=both,label=\"2\", curvelines=true]
    B -> C [label=\"3\", curvelines=true]
  }
",
)
