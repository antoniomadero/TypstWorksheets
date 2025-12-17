
#set page(margin: 1.5cm)
#let title = "🎄 Vánoční matematické dobrodružství na ZŠ"
#let subtitle = "Zábavný pracovní list pro budoucí učitele 🎁" 

#align(center)[
  #block(
    width: 100%,
    fill: rgb("#ffebee"),
    inset: 20pt,
    radius: 15pt,
    stroke: 2pt + red,
  )[
    #text(size: 22pt, weight: "bold", fill: rgb("#d32f2f"))[#title] \
    #text(size: 16pt, weight: "semibold", fill: rgb("#c62828"))[#subtitle]
    
  ]
]

#v(10pt)

#text(size: 11pt)[
  Vážení budoucí učitelé,

  představte si, že připravujete vánoční hodinu matematiky pro žáky 2. stupně ZŠ. Vaším úkolem je nejen správně vyřešit následující příklady, ale především promyslet, *jak byste je vysvětlili dětem na ZŠ*, jaké pomůcky byste použili, kde by mohly udělat chybu a jak byste je motivovali vánoční tematikou.

  Ke každému příkladu napište nejen Komentář, ale i krátký Komentář (2–4 věty).
]

#v(10pt)

#set text(size: 11pt)
#set par(justify: true)

#enum(
  

  enum.item(1)[
    #text(weight: "bold", size: 14pt)[Santovy sáně] \
    Santa Claus letí saněmi rychlostí 840 km/h.  
    Za jak dlouho obletí celou Zemí po rovníku? Znáš poloměr Země?  
    Výsledek zaokrouhlete na celé minuty.

    #v(0.5em)
    *Komentář:* #box(width: 100%, height: 60pt, stroke: (dash: "dashed"), inset: 8pt)
  ],

  enum.item(2)[
    #text(weight: "bold", size: 14pt)[Vánoční stromek] \
    Na náměstí stojí vánoční stromek ve tvaru pravidelného jehlanu s čtvercovou podstavou.  
    Podstava má stranu 4 m a výška stromku je 12 m.  
    Kolik metrů světelného řetězu je potřeba na ovlnění jednoho poledníku stromku (od vrcholu k hraně podstavy a zpět)?  
    (Nápověda: nejprve spočítejte délku postranní hrany.)

    #v(0.5em)
    *Komentář:* #box(width: 100%, height: 60pt, stroke: (dash: "dashed"), inset: 8pt)
  ],

  enum.item(3)[
    #text(weight: "bold", size: 14pt)[Dárečky pod stromečkem (slovní úloha s rovnicí)] \
    Pod stromečkem leží několik dárečků.  
    Když je rozdělíme mezi 5 dětí, každému zbude 3 dárečky navíc.  
    Když je rozdělíme mezi 7 dětí, každému chybí 2 dárečky.  
    Kolik je dárečků a kolik je dětí v rodině?

    #v(0.5em)
    *Komentář:* #box(width: 100%, height: 60pt, stroke: (dash: "dashed"), inset: 8pt)
  ],

  enum.item(4)[
    #text(weight: "bold", size: 14pt)[Pokračující vánoční zlomek] \
    Vánoční ozdoba má tvar pokračujícího zlomku:  
    $ x = 1 + frac(1, 1 + frac(1, 1 + frac(1, 1 + frac(1, dots)))) $  
    Jaká je hodnota tohoto „zlatého“ vánočního zlomku?  
    (Vypočítejte přesně a pak přibližně na 3 desetinná místa.)

    #v(0.5em)
    *Komentář:* 
    #box(width: 100%, height: 60pt, stroke: (dash: "dashed"), inset: 8pt)
  ],

  enum.item(5)[
    #text(weight: "bold", size: 14pt)[Sněhové vločky (kombinatorika)] \
    Kolika různými způsoby může napadat 6 různých sněhových vloček na okno, pokud záleží na pořadí, v jakém se objeví?  
    A kolika způsoby, pokud pořadí nezáleží (vločky jsou nerozeznatelné od sebe)?

    #v(1em)
    *Komentář:* #box(width: 100%, height: 60pt, stroke: (dash: "dashed"), inset: 8pt)
  ],

  enum.item(6)[
    #text(weight: "bold", size: 14pt)[Adventní kalendář (aritmetická posloupnost)] \
    V adventním kalendáři je za každým okénkem čokoláda o hmotnosti 1 g, 3 g, 5 g, 7 g atd. (lichá čísla).  
    Kolik gramů čokolády je celkem v kalendáři s 24 okénky?

    #v(1em)
    *Komentář:* #box(width: 100%, height: 60pt, stroke: (dash: "dashed"), inset: 8pt)
  ]
)


#text(size: 16pt, weight: "bold", fill: rgb("#d32f2f"))[Bonusový rébus]
 
#align(center)[#image("rebus.jpg", width: 300pt)] 

#box(width: 100%, height: 80pt, stroke: (dash: "dashed"), inset: 8pt)

#v(30pt)
#align(center)[
  
  #v(10pt)
  #text(size: 16pt)[🎄 Veselé Vánoce a hodně štěstí v učitelské praxi! 🎅]
]