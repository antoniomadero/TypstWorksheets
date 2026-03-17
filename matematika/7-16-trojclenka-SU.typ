#import "funkce.typ": trojclenka

#set page(margin: 2cm)
#show heading.where(): it => block(
  below: 1.3em,
  above: 1.8em,
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

*Sestavíme úměru:* 24 min : 6 km = 30 min : x km

*Vypočítáme:* x = (30 min $dot$ 6 km) / 24 min = 7,5 km

*Odpověď:* Za 30 minut ujedeme 7,5 km.

== Příklady:

+ Na ujetí 60 km autem potřebujeme 48 min kolik min potřebujeme na ujetí 80 km při stejné rychlosti?

+ 6 zedníků by pracovalo na stavbě 16 dní. Kolik dní by pracovalo stejným tempem 8 zedníků?

+ 8 kravám by krmení ve stodole vystačilo na 9 dní. Na kolik dní by vystačilo 12 kravám?

+ 3 bratři sbírají jablka. Dohromady nasbírají 14 košů. Kolik košů by nasbíralo 7 bratrů?

+ 4 bratři sbírají jablka. Dohromady nasbírají 10 košů. Kolik košů by nasbíralo 18 bratrů?

+ 5 kombajnů zorá pole za 12 dní. Za kolik dní by to stihlo 6 kombajnů?

+ 9 kopáčů vykope výkop za 8 dní. Kolik by jich muselo kopat, aby to zvládli za 12 dní?

+ Za 12 litrů minerálky jsme zaplatili 180 Kč, kolik Kč bychom zaplatili za 15 litrů?

+ Pokud jedeme autem rychlostí 60 km/h ujedeme cestu za 1,5h. Za jak dlouho ji urazíme rychlostí
  a) 80 km/h
  b) 90km/h

+ 15 žáků nasbíralo 450 kg papíru. Kolik by nasbíralo se stejnou výkonností 20 žáků?

+ 5 kamarádů se společně skládalo na dárek. Dohromady vybrali 240 Kč. \
  a) Kolik by vybrali, kdyby se jich skládalo 8? \
  b) Kolik by bylo potřeba kamarádů, aby vybrali 300 Kč?
+ 18 Trysek naplní bazén za 12 a půl hodiny. Za jak dlouho naplní bazén 15 trysek?

+ 24 zedníků vypije za den na stavbě 72 lahví nápoje. Kolik lahví by spotřebovalo 19 zedníků. (všichni pijí stejně)

+ 16 zedníků vypije za den na stavbě 48 lahví nápoje. Kolik lahví by spotřebovalo 19 zedníků. (všichni pijí stejně)

+ Při spotřebě 0,4 t uhlí denně vydrží zásoba na 36 dní. Na kolik dní bude stačit zásoba spotřebuje-li se o 16 kg uhlí denně méně?

+ Kuchař připraví guláš pro 48 osob z 8 kg masa. Kolik masa bude potřebovat na guláš pro 126 osob.

+ Ze 2 kg čerstvého heřmánku se získá 600 g sušeného heřmánku. Kolik tun čerstvého bude potřeba na 2,7 tun  sušeného heřmánku?

+ 12 dělníků vysázelo za den 1260 lesních stromků. Kolik stromků vysází následující den, bude-li pracovat 16 dělníků?

+ Na pokrytí střechy 48m2 se spotřebuje 384 tašek. Kolik stejných tašek se spotřebuje na obdélníkovou střechu o rozměrech 6m a 9,5m.

+ 6 strojů zpracuje zásobu materiálu za 15 směn. Za kolik směn zpracuje zásobu 8 strojů? Zapiš smíšeným číslem.

+ Na vysetí pole o výměře 14,3 ha je potřeba 2,86 t pšenice. Kolik bude potřeba na osetí pole o rozměrech 140 a 250 metrů?

+ Pumpa přečerpala za 17 minut 1445 litrů vody. Kolik vody přečerpá za půl hodiny?

+ 18 čerpadel naplní bazén za $3 1/3$hodiny. Jak dlouho se plní bazén použijeme-li o tři čerpadla míň?

+ Na pole o výměře 240m2se vyseje 0,6 q pšenice. Kolik se vyseje na pole o rozměrech 14 a 15 m?

+ 24 zedníků postaví zeď za $9 1/3$ hodiny. Za jak dlouho postaví tuto zeď 21 zedníků?

+ Na natření plotu 15 m2 je potřeba 0,8 kg barvy. Kolik barvy použiješ na natření plotu s rozměry 3 a 8 m?

+ Kruhová nádrž se naplní pomocí 4 přítokových otvorů za 580 minut. Za jak dlouho se naplní při otevření všech 5 přítokových otvorů?

+ Na 18 m#super[2] je potřeba 450 kachliček. Kolik jich bude potřeba na stěnu 2 krát 3,5 metru?

+ 7 tkalcovských stavů vyrobí zásilku za 42 hodin. Za jak dlouho vyrobí tuto zásilku 21 stavů?

+ Na záhon s výměrou 15 m2 je potřeba 375 sazenic. Kolik jich bude třeba na záhon 2,5 krát 2 metry?

+ Nákladní auto ujede trasu za 5 hodin rychlostí 65 km/h. Za jak dlouho ujede tuto vzdálenost osobní auto rychlostí o $1/5$ větší?

+ Ze 480 kg čerstvých jablek se vyrobí 60 kg sušených. Kolik čerstvých budeme potřebovat na 150 kg sušených?

+ V hale se vymění vzduch ventilátorem o výkonu 45 l/s za #underline[hodinu a 20 minut] Za jak dlouho by se vyměnil ventilátorem s výkonem 30 l/s?

+ Na obložení stěny 150 cm dlouhé a 200 cm vysoké se spotřebovalo 120 dlaždiček. Kolik dlaždiček by se spotřebovalo na stěnu 90x100 cm?

+ 21 švadlen pracuje na zakázce 315 hodin. Kolik hodin bude pracovat 18 švadlen?

+ Čerpadlem o výkonu 25 l/s se nádrž naplní za hodinu a 12 minut. Za jak dlouho se naplní čerpadlem o výkonu 20 l/s?

+ Nákladní auto ujede trasu za 5 hodin rychlostí 60 km/h. Za jak dlouho ujede tuto vzdálenost osobní auto rychlostí o $1/5$ větší?

+ Ze 640 kg čerstvých jablek se vyrobí 80 kg sušených. Kolik tun čerstvých budeme potřebovat na dva metráky sušených?

+ V hale se vymění vzduch ventilátorem o výkonu 25 l/s za dvě hodiny a 20 minut. Za jak dlouho by se vyměnil ventilátorem s výkonem 40 l/s?

+ Na obložení stěny 150 cm dlouhé a 120 cm vysoké se spotřebovalo 80 dlaždiček. Kolik dlaždiček by se spotřebovalo na stěnu 180x220 cm?

+ 12 zedníků postaví zeď za 96 hodin. Za kolik hodin postaví 18 zedníků tutéž zeď?

+ Pumpa přečerpala za 17 minut 1445 litrů vody. Kolik vody přečerpá za $1/2$ hodiny?

+ Ze 2 kg švestek se získá 600 g povidel. Kolik povidel se získá z 3,2 kg švestek?






