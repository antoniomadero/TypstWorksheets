#import "@preview/diagraph:0.3.0": render

#render(
  "
  digraph G {
    rankdir=TD;
    layout=dot;
    node [shape=circle];
    A -> B [color=red, penwidth=2, label=5,curvelines=true];
    B -> A [label=\"10\"];
    C -> A [dir=both, label=\"5\", curvelines=true];
    A -> D [label=\"6\", curvelines=true]
    D -> C [label=\"4\", curvelines=true]
    B -> D [dir=both,label=\"2\", curvelines=true]
    B -> C [label=\"3\", curvelines=true]
  }
",
)
