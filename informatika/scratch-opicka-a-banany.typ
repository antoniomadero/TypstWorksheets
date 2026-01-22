#set page(margin: 2cm)
= Scratch: Opička a banány
== Cíl: 
Vytvořit jednoduchou hru, ve které opička sbírá banány.
== Co budeme potřebovat:
  - Postavičku opičky
  - Postavičku banánu
  - síť (XY-Grid, grid-60.svg)
== Co se naučíme:
  - nastavit pozadí scény, nastavit postavy + velikost
  - Pohybovat postavičkou pomocí šipek
  - náhodně umístit banán na síti (náhodná čísla, pozice v síti)
  - využívat proměnnou (velikost políčka, skóre)
  - Detekovat kolizi mezi postavičkou a předmětem (vnímání)
  - Zobrazit skóre
- _ volitelně: využívat bloky(funkce)_

=== Úvod
V této části si nastavíme pozadí scény a přidáme postavičku opičky. Také nastavíme velikost postavičky tak, aby odpovídala velikosti scény. Postavičku naučíme pohyb, zopakujeme si pohyb v souřadnicovém systému aplikace Scratch.
+ Smaž postavičku kočky.
+ Klikni na ikonu "Vybrat postavičku" a přidej postavičku opičky (monkey).
+ Klikni na ikonu "Vybrat pozadí" a přidej pozadí s názvem "XY-Grid".

Nyní vidíme, že postavička kočky je příliš velká, takže nastavíme velikost postavičky opičky na 50 %.
4. Klikni na postavičku opičky a v políčku velikost nastav 50.
+ Nyní umístíme postavičku do středu systému souřadnic. Ideální je ji umístit do témo výchozí pozice při kliknjutí na zelenou vlaječku.
#image("images/opicka-start.png", width: 5cm)

Nyní přidáme kód, který nám umožní pohybovat opičkou pomocí šipek na klávesnici. Použijeme bloky "když je stisknuta klávesa" a "změň x o" nebo "změň y o" podle směru pohybu.

6. Při stisknutí klávesy "šipka vpravo" změníme x o 100.
+ Při stisknutí klávesy "šipka vlevo" změníme x o -100.

#image("images/opicka-pohyb.png")

Zde lze dobře použít pravý klik myší a "kopírovat" - velmi silný nástroj pro opakující se bloky kódu.
Žáci si nyní mohou vyzkoušet pohyb opičky pomocí šipek na klávesnici.
#align(center)[
  #image("images/opicka-pohyb-ukazka.png", width: 50%)
]

=== Změna sítě, proměnná velikost políčka
Nyní změníme pozadí scény na síť s názvem "grid-60.svg", která má velikost políčka 60x60 pixelů. Pokaždé když vytvoříme si také proměnnou "velikost políčka", kterou nastavíme na hodnotu 60. Tuto proměnnou budeme používat pro pohyb opičky a umístění banánu.

+ Klikni na ikonu "Vybrat pozadí" a přidej pozadí s názvem "grid60.svg".
+ Vytvoř proměnnou s názvem "krok" a nastav její hodnotu při startu (zelená vlaječka) na 60.
+ Uprav kód pro pohyb opičky tak, aby místo pevné hodnoty 100 používal proměnnou "krok".
( jak ale vyřešíme zápornou hodnotu pro pohyb doleva a dolů? Použijeme odčítání od nuly. )



