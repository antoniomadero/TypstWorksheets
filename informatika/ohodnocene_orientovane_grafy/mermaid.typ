#import "@preview/mmdr:0.2.0": mermaid

#mermaid("graph TD; A-->B;")

#import "@preview/oxdraw:0.1.0": *

#oxdraw("
graph TD
    A[Start] --> B[End]
")

#mermaid(
  " graph LR
      A--4--&gt;B
      A--2--&gt;C
      B--5--&gt;D
      B--4--&gt;E
      C--1--&gt;D
      A--7--&gt;E
      D--3--&gt;E
      C--1--&gt;B",
)

