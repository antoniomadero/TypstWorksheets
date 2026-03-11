#import "@preview/h-graph:0.1.0"

#import "@preview/h-graph:0.1.0": enable-graph-in-raw, polar-render

#show raw.where(lang: "graph"): enable-graph-in-raw(polar-render)
// or #show raw.where(lang: "graph"): enable-graph-in-raw(tree-render)
```graph
#scl: 0.8;
1-2, 3, 4;
5-6, 7, 8;
2- 3, 4;
6 -[5]- 7;
3 > 7;
7 > 3;
4- 8;
```
