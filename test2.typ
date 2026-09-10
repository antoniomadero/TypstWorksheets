#import "@preview/diagraph:0.3.3": render

// Nastavení stránky na formát A5 na šířku (ideální do sešitu)
#set page(flipped: true, margin: 1.5cm)
#set text(font: "Calibri", lang: "cs", size: 12pt)

// Nadpis a zadání pro žáky
= Hackerský průnik: Odblokuj systém!

*Tvá mise:* Začni u startovního uzlu. Vypočítej příklad na šipce a mezivýsledek zapiš do prázdné bubliny. Na křižovatce si dej pozor! Dál můžeš pokračovat jen tou cestou, která splňuje podmínku v závorce.

#v(1em)

#align(center)[
  #render(
    "
  digraph G {
    // Směr zleva doprava
    rankdir=LR;

    // Globální nastavení vzhledu
    node [shape=circle, fixedsize=true, width=0.9, style=filled, fillcolor=white, penwidth=1.5, fontname=\"Calibri\"];
    edge [penwidth=1.5, fontsize=11, fontname=\"Calibri\", labeldistance=1.5];

    // Definice uzlů (bublin)
    start [label=\"12,5\", fillcolor=\"#e0f7fa\"];
    u1 [label=\"\"];
    u2 [label=\"\"];
    u3_ok [label=\"\"];
    u3_bad [label=\"\"];
    cil [label=\"CÍL\", shape=doublecircle, fillcolor=\"#c8e6c9\"];
    error [label=\"PŘÍSTUP\\nZAMÍTNUT\", shape=box, fillcolor=\"#ffcdd2\", width=1.2, fixedsize=false];

    // Cesta a výpočty (12,5 - 3,2 = 9,3) -> (9,3 * 2 = 18,6)
    start -> u1 [label=\" - 3,2 \"];
    u1 -> u2 [label=\" · 2 \"];

    // Větvení - žák musí posoudit výsledek (18,6 > 15 -> jde vrchní cestou)
    u2 -> u3_ok [label=\" + 1,4 \\n(pokud je výsledek > 15) \"];
    u2 -> u3_bad [label=\" : 10 \\n(pokud je výsledek < 15) \"];

    // Dokončení správné cesty (20 : 4 = 5)
    u3_ok -> cil [label=\" : 4 \"];

    // Dokončení špatné cesty (slepá ulička)
    u3_bad -> error [label=\" ! \"];
  }
  ",
  )
]
