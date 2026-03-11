#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

#figure(
  diagram(
    spacing: 3cm,
    node-stroke: 1pt,
    node-corner-radius: 0.6cm,

    node((0, 0), [U], name: <U>),
    node((2, 0), [V], name: <V>),

    // 1. Obousměrná hrana (neorientovaná nebo obousměrně orientovaná)
    // Použití "<->" vytvoří šipky na obou koncích
    edge(<U>, <V>, [obousměrná], "<->", bend: 40deg),

    // 2. Multihrana (dvě různé cesty stejným směrem)
    // Horní cesta
    edge(<U>, <V>, [cesta 1], "->", bend: 10deg),
    // Spodní cesta
    edge(<U>, <V>, [cesta 2], "->", bend: -10deg),

    // 3. Protisměrné cesty s různými parametry
    // Z V do U s velkým obloukem spodem
    edge(<V>, <U>, [protisměrná], "->", bend: 60deg, stroke: blue),
  ),
  caption: [Ukázka multihran a orientace v balíčku Fletcher],
)
