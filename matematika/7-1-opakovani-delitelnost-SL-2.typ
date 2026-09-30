#import "@preview/touying:0.8.0": *
#import themes.metropolis: *


#show: metropolis-theme.with(
  aspect-ratio: "16-9",

  config-info(
    title: [Dělitelnost – slovní úlohy 2],
    subtitle: [6. ročník ZŠ – NSD a NSN],
    author: [Matematika],
  ),

  config-colors(
    primary: rgb("#1d3557"),
    primary-light: rgb("#a8dadc"),
    secondary: rgb("#457b9d"),
    neutral-lightest: rgb("#f8f9fa"),
    neutral-dark: rgb("#1d3557"),
    neutral-darkest: rgb("#1d3557"),
  ),
)


#title-slide()

// ==========================================
// ÚLOHA 1
// ==========================================

== Úloha 1: Zadání

Klára a Tomáš běhají na atletickém oválu. Klára oběhne jedno kolo za 18 minut, Tomáš za 24 minut.

#pause

Vyběhnou současně ze stejného místa ve stejný okamžik.

#pause

*Otázka:* Za jak dlouho se opět setkají na startu a kolik koleček mezitím každý uběhne?

== Úloha 1: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme nejmenší společný čas, kdy se potkají → hledáme *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $18 = 2 dot 3^2$
  - $24 = 2^3 dot 3$

#pause

3. *Výpočet NSN:*

  $"NSN"(18, 24) = 2^3 dot 3^2 = 72$ minut.

#pause

4. *Dokončení výpočtu:*
  - Klára: $72 / 18 = 4$ kolečka
  - Tomáš: $72 / 24 = 3$ kolečka

#pause

*Odpověď:* Na startu se opět setkají za 72 minut. Klára uběhne 4 kolečka a Tomáš 3 kolečka.


// ==========================================
// ÚLOHA 2
// ==========================================

== Úloha 2: Zadání

Pan školník má 84 modrých a 126 červených tužek. Chce z nich připravit co nejvíce zcela stejných balíčků tak, aby nezbyla žádná tužka.

#pause

*Otázka:* Kolik balíčků může připravit a kolik tužek od každé barvy bude v jednom balíčku?

== Úloha 2: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme množství na stejné díly → hledáme *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $84 = 2^2 dot 3 dot 7$
  - $126 = 2 dot 3^2 dot 7$

#pause

3. *Výpočet NSD:*

  $"NSD"(84, 126) = 2 dot 3 dot 7 = 42$ balíčků.

#pause

4. *Rozdělení do balíčků:*
  - Modré tužky: $84 / 42 = 2$ ks v balíčku
  - Červené tužky: $126 / 42 = 3$ ks v balíčku

#pause

*Odpověď:* Může připravit maximálně 42 balíčků. V každém budou 2 modré a 3 červené tužky.


// ==========================================
// ÚLOHA 3
// ==========================================

== Úloha 3: Zadání

Z autobusového nádraží vyjíždějí dvě linky současně v 6:00 ráno. Linka A jezdí každých 18 minut, linka B každých 30 minut.

#pause

*Otázka:* V kolik hodin nejdříve opět vyjedou obě linky ve stejný okamžik?

== Úloha 3: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme společný čas budoucích odjezdů → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $18 = 2 dot 3^2$
  - $30 = 2 dot 3 dot 5$

#pause

3. *Výpočet NSN:*

  $"NSN"(18, 30) = 2 dot 3^2 dot 5 = 90$ minut.

#pause

90 minut = 1 hodina 30 minut.

#pause

*Odpověď:* Obě linky opět vyjedou společně za 90 minut, tedy v 7:30 hodin.


// ==========================================
// ÚLOHA 4
// ==========================================

== Úloha 4: Zadání

Zahrádkář sklidil 96 jablek a 144 hrušek. Chce je rozložit do stejných dárkových košíků tak, aby v každém košíku byl stejný počet jablek a hrušek a nic nezbylo.

#pause

*Otázka:* Jaký největší počet košíků může naplnit a co v nich bude?

== Úloha 4: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme ovoce na stejné díly → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $96 = 2^5 dot 3$
  - $144 = 2^4 dot 3^2$

#pause

3. *Výpočet NSD:*

  $"NSD"(96, 144) = 2^4 dot 3 = 48$ košíků.

#pause

4. *Počet kusů v košíku:*
  - Jablka: $96 / 48 = 2$ ks
  - Hrušky: $144 / 48 = 3$ ks

#pause

*Odpověď:* Připraví 48 košíků. V každém budou 2 jablka a 3 hrušky.


// ==========================================
// ÚLOHA 5
// ==========================================

== Úloha 5: Zadání

Dva světelné signály blikají. První blikne každých 28 sekund, druhý každých 42 sekund. Právě teď blikly oba současně.

#pause

*Otázka:* Za kolik sekund bliknou opět současně?

== Úloha 5: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme společný čas budoucího bliknutí → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $28 = 2^2 dot 7$
  - $42 = 2 dot 3 dot 7$

#pause

3. *Výpočet NSN:*

  $"NSN"(28, 42) = 2^2 dot 3 dot 7 = 84$ sekund.

#pause

*Odpověď:* Signály opět bliknou současně za 84 sekund.


// ==========================================
// ÚLOHA 6
// ==========================================

== Úloha 6: Zadání

Pekař upekl 90 rohlíků a 120 loupáků. Chce je zabalit do stejných papírových sáčků tak, aby v každém sáčku byl stejný počet rohlíků a stejný počet loupáků a žádné pečivo nezbylo.

#pause

*Otázka:* Kolik nejvíce sáčků může naplnit a kolik kusů pečiva bude v každém?

== Úloha 6: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme pečivo na stejné díly → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $90 = 2 dot 3^2 dot 5$
  - $120 = 2^3 dot 3 dot 5$

#pause

3. *Výpočet NSD:*

  $"NSD"(90, 120) = 2 dot 3 dot 5 = 30$ sáčků.

#pause

4. *Počet kusů v jednom sáčku:*
  - Rohlíky: $90 / 30 = 3$
  - Loupáky: $120 / 30 = 4$

#pause

*Odpověď:* Pekař může naplnit maximálně 30 sáčků. V každém budou 3 rohlíky a 4 loupáky.


// ==========================================
// ÚLOHA 7
// ==========================================

== Úloha 7: Zadání

Vlaky linky S1 jezdí každých 24 minut, vlaky linky S2 každých 36 minut. Na nádraží se potkaly v 8:00 ráno.

#pause

*Otázka:* Za kolik minut se na nádraží opět potkají ve stejnou chvíli?

== Úloha 7: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme společný čas setkání → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $24 = 2^3 dot 3$
  - $36 = 2^2 dot 3^2$

#pause

3. *Výpočet NSN:*

  $"NSN"(24, 36) = 2^3 dot 3^2 = 72$ minut.

#pause

72 minut = 1 hodina 12 minut.

#pause

*Odpověď:* Vlaky se opět potkají za 72 minut, tedy v 9:12.


// ==========================================
// ÚLOHA 8
// ==========================================

== Úloha 8: Zadání

Maminka má dvě stuhy o délce 126 cm a 168 cm. Chce je nastříhat na stejně dlouhé kousky tak, aby nezbyl žádný odstřižek a kousky byly co nejdelší.

#pause

*Otázka:* Jaká bude délka jednoho kousku stuhy?

== Úloha 8: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme stuhy na stejné díly a chceme maximální délku → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $126 = 2 dot 3^2 dot 7$
  - $168 = 2^3 dot 3 dot 7$

#pause

3. *Výpočet NSD:*

  $"NSD"(126, 168) = 2 dot 3 dot 7 = 42$ cm.

#pause

*Odpověď:* Délka jednoho kousku stuhy bude 42 cm.


// ==========================================
// ÚLOHA 9
// ==========================================

== Úloha 9: Zadání

Dvě ozubená kola do sebe zapadají. První kolo má 28 zubů, druhé 42 zubů.

#pause

*Otázka:* Kolikrát se musí první kolo otočit, aby se obě kola ocitla opět ve stejné výchozí pozici jako na začátku?

== Úloha 9: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme nejmenší společný násobek počtu zubů → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $28 = 2^2 dot 7$
  - $42 = 2 dot 3 dot 7$

#pause

3. *Výpočet NSN:*

  $"NSN"(28, 42) = 2^2 dot 3 dot 7 = 84$ zubů.

#pause

4. *Výpočet otáček prvního kola:*

  $84 / 28 = 3$ otáčky.

#pause

*Odpověď:* První kolo se musí otočit 3krát.


// ==========================================
// ÚLOHA 10
// ==========================================

== Úloha 10: Zadání

Ve třídě je 72 chlapců a 90 dívek. Učitel chce vytvořit smíšená družstva na soutěž tak, aby v každém družstvu byl stejný počet chlapců a stejný počet dívek a nikdo nezbyl.

#pause

*Otázka:* Jaký největší počet družstev může vytvořit a kolik chlapců a dívek bude v každém družstvu?

== Úloha 10: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme žáky na stejné skupiny → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $72 = 2^3 dot 3^2$
  - $90 = 2 dot 3^2 dot 5$

#pause

3. *Výpočet NSD:*

  $"NSD"(72, 90) = 2 dot 3^2 = 18$ družstev.

#pause

4. *Složení družstva:*
  - Chlapci: $72 / 18 = 4$
  - Dívky: $90 / 18 = 5$

#pause

*Odpověď:* Učitel může vytvořit maximálně 18 družstev. V každém budou 4 chlapci a 5 dívek.
