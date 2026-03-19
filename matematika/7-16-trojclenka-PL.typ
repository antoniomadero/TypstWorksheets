#import "funkce.typ": trojclenka

#set page(margin: 1.3cm, flipped: true)
#show heading.where(): it => block(
  below: 1.2em,
  above: 1.6em,
  it,
)
#show heading.where(level: 1): set text(size: 22pt)

#let ramecek(obsah) = block(
  width: 100%, // Šířka přes celý list
  fill: rgb("#ddf3fd"), // Velmi světle modrá výplň
  stroke: (left: 4pt + blue),
  radius: 8pt, // Kulaté rohy
  inset: 1.5em, // Mezera mezi textem a okrajem rámečku
  [
    #set text(size: 11pt, fill: rgb("#004080")) // Nastavení textu uvnitř
    #set list(spacing: 1.5em)             // Hezčí odsazení odrážek
    #obsah
  ],
)

#columns(2)[

  = Trojčlenka

  #ramecek([
    - Způsob zápisu a řešení příkladů (slovních úloh), kde známe tři údaje a čtvrtý máme vypočítat
    - důležitým krokem je určení vztahu mezi těmito údaji (přímá nebo nepřímá úměra) a sestavení správného zápisu (určení závislých a nezávislých proměnných)
    - Výpočet nám vede k sestavení úměry (dvou poměrů, které se rovnají)
  ])

  == Vzor

  *_Jestliže za 24 minut ujedeme 6 km, kolik km ujedeme za 30 min?_*

  *Známe:* 24 min, 6 km, 30 min

  *Neznáme:* x km

  *Zápis:* #trojclenka("24 min", "6 km", "30 min", "x km")

  *Sestavíme úměru:* 30 min : 24 min = x km : 6 km

  *Vypočítáme:* x = (30 min $dot$ 6 km) : 24 min = 7,5 km

  *_Tři dělníci vyhloubí příkop za 8 dní. Za jak dlouho vykonají tuto práci 4 dělníci?_*

  #trojclenka("3 dělníci", "8 dní", "4 dělníci", "x dní", prima: false)

  #pad(left: 1.5em)[4 : 3 = 8 : x

    $(3·8)/4$ = #underline()[6 dní]
  ]

  *_Odpověď_*: 4 dělníci vykonají tuto práci za 6 dní.


  #set text(size: 10pt)

  == Příklady:

  + 6 zedníků by pracovalo na stavbě 16 dní. Kolik dní by pracovalo stejným tempem 8 zedníků?

  + 8 kravám by krmení ve stodole vystačilo na 9 dní. Na kolik dní by vystačilo 12 kravám?

  + 4 bratři sbírají jablka. Dohromady nasbírají 10 košů. Kolik košů by nasbíralo 18 bratrů?

  + 9 kopáčů vykope výkop za 8 dní. Kolik by jich muselo kopat, aby to zvládli za 12 dní?

  + Za 12 litrů minerálky jsme zaplatili 180 Kč, kolik Kč bychom zaplatili za 15 litrů?

  + 5 kamarádů se společně skládalo na dárek. Dohromady vybrali 240 Kč. \
    a) Kolik by vybrali, kdyby se jich skládalo 8? \
    b) Kolik by bylo potřeba kamarádů, aby vybrali 300 Kč?

  + 16 zedníků vypije za den na stavbě 48 lahví nápoje. Kolik lahví by spotřebovalo 19 zedníků. (všichni pijí stejně)

  + Při spotřebě 0,4 t uhlí denně vydrží zásoba na 36 dní. Na kolik dní bude stačit zásoba spotřebuje-li se o 16 kg uhlí denně méně?

  + Kuchař připraví guláš pro 48 osob z 8 kg masa. Kolik masa bude potřebovat na guláš pro 126 osob.

  + Ze 2 kg čerstvého heřmánku se získá 600 g sušeného heřmánku. Kolik tun čerstvého bude potřeba na 2,7 tun  sušeného heřmánku?

  + 12 dělníků vysázelo za den 1260 lesních stromků. Kolik stromků vysází následující den, bude-li pracovat 16 dělníků?

  + Na natření plotu 15 m#super[2] je potřeba 0,8 kg barvy. Kolik barvy použiješ na natření plotu s rozměry 3 a 8 m?

  + Na 18 m#super[2] je potřeba 450 kachliček. Kolik jich bude potřeba na stěnu 2 krát 3,5 metru?

  + Na záhon s výměrou 15 m2 je potřeba 375 sazenic. Kolik jich bude třeba na záhon 2,5 krát 2 metry?

  + 21 švadlen pracuje na zakázce 315 hodin. Kolik hodin bude pracovat 18 švadlen?

  + Nákladní auto ujede trasu za 5 hodin rychlostí 60 km/h. Za jak dlouho ujede tuto vzdálenost osobní auto rychlostí o $1/5$ větší?

  + Ze 2 kg švestek se získá 600 g povidel. Kolik povidel se získá z 3,2 kg švestek?

]







