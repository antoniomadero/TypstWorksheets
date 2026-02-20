#set page(margin: 1.7cm)
#set text()
#show heading.where(level: 1): set text(size: 1.5em)
#show heading.where(level: 2): set text(size: 1.2em)
#show raw: set text(fill: blue)

= p5.js - lekce 3 - Vlajky - level 3

Nyní již umíme kreslit základní tvary a jednoduché vlajky. V této lekci se zaměříme na složitější vlajky, které obsahují více tvarů a barev. Naučíme se, jak kombinovat různé tvary a barvy, abychom vytvořili věrné kopie skutečných vlajek států. Někdy bude potřeba také trochu více počítání poměrů.

== Dannebrog
Vlajka Dánska, která se skládá z bílého kříže na červeném pozadí.
Zde to nebude tolik jednoduché. Dánská vlajka má kříž, který není uprostřed, ale posunutý směrem k žerdi. Také má jasný poměr 37:28.
Pro vytvoření této vlajky použijeme dvě úsečky, které se protínají, ale ne uprostřed plátna. Dánská vlajka "Dannebrog" má poměr 12:21:4, což znamená, že kříž je posunut o 12 jednotek od levého okraje, má šířku 4 jednotky a zbytek plátna je rozdělen mezi pravou stranu (21 jednotek) a levý okraj (12 jednotek). Více nám situaci přiblíží obrázek s rozdělením plátna:

#align(center)[#image("images/Dannebrog.svg", width: 30%)]


== Norsko a Island



