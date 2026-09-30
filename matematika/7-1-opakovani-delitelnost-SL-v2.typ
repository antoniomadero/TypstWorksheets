#import "@preview/touying:0.8.0": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",

  config-info(
    title: [Dělitelnost – slovní úlohy],
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

Pavel a Marek trénují na atletickém oválu. Pavel oběhne jedno kolo za 4 minuty, Marek za 6 minut.

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
  - $4 = 2^2$
  - $6 = 2 dot 3$

#pause

3. *Výpočet NSN:*

  $"NSN"(4, 6) = 2^2 dot 3 = 12$ minut.

#pause

4. *Dokončení výpočtu:*
  - Pavel: $12 / 4 = 3$ kolečka
  - Marek: $12 / 6 = 2$ kolečka

#pause

*Odpověď:* Chlapci se setkají za 12 minut. Pavel uběhne 3 kolečka a Marek 2 kolečka.


// ==========================================
// ÚLOHA 2
// ==========================================

== Úloha 2: Zadání

Paní učitelka má v kabinetu 24 modrých a 36 červených tužek. Chce z nich připravit zcela stejné balíčky pro žáky tak, aby nezbyla žádná tužka.

#pause

*Otázka:* Jaký maximální počet stejných balíčků může připravit a kolik tužek od každé barvy bude v jednom balíčku?

== Úloha 2: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme množství na stejné díly → hledáme *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $24 = 2^3 dot 3$
  - $36 = 2^2 dot 3^2$

#pause

3. *Výpočet NSD:*

  $"NSD"(24, 36) = 2^2 dot 3 = 12$ balíčků.

#pause

4. *Rozdělení do balíčků:*
  - Modré tužky: $24 / 12 = 2$ ks v balíčku
  - Červené tužky: $36 / 12 = 3$ ks v balíčku

#pause

*Odpověď:* Může připravit maximálně 12 balíčků. V každém budou 2 modré a 3 červené tužky.


// ==========================================
// ÚLOHA 3
// ==========================================

== Úloha 3: Zadání

Na autobusovém nádraží vyjíždějí dvě linky současně v 6:00 ráno. Linka A jezdí každých 15 minut, linka B každých 20 minut.

#pause

*Otázka:* V kolik hodin nejdříve opět vyjedou obě linky ve stejný okamžik?

== Úloha 3: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme společný čas budoucích odjezdů → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $15 = 3 dot 5$
  - $20 = 2^2 dot 5$

#pause

3. *Výpočet NSN:*

  $"NSN"(15, 20) = 2^2 dot 3 dot 5 = 60$ minut.

#pause

60 minut = 1 hodina.

#pause

*Odpověď:* Obě linky opět vyjedou společně za 60 minut, tedy v 7:00 hodin.


// ==========================================
// ÚLOHA 4
// ==========================================

== Úloha 4: Zadání

Zahrádkář sklidil 48 jablek a 60 hrušek. Chce je rozložit do stejných dárkových košíků tak, aby v každém košíku byl stejný počet jablek a stejný počet hrušek a nic nezbylo.

#pause

*Otázka:* Jaký největší počet košíků může naplnit a co v nich bude?

== Úloha 4: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme ovoce na stejné díly → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $48 = 2^4 dot 3$
  - $60 = 2^2 dot 3 dot 5$

#pause

3. *Výpočet NSD:*

  $"NSD"(48, 60) = 2^2 dot 3 = 12$ košíků.

#pause

4. *Počet kusů v košíku:*
  - Jablka: $48 / 12 = 4$ ks
  - Hrušky: $60 / 12 = 5$ ks

#pause

*Odpověď:* Připraví 12 košíků. V každém budou 4 jablka a 5 hrušek.


// ==========================================
// ÚLOHA 5
// ==========================================

== Úloha 5: Zadání

Dva světelné signály na semaforu blikají. První blikne každých 8 sekund, druhý každých 12 sekund. Právě teď blikly oba současně.

#pause

*Otázka:* Za kolik sekund bliknou opět současně?

== Úloha 5: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme společný čas budoucího bliknutí → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $8 = 2^3$
  - $12 = 2^2 dot 3$

#pause

3. *Výpočet NSN:*

  $"NSN"(8, 12) = 2^3 dot 3 = 24$ sekund.

#pause

*Odpověď:* Signály opět bliknou současně za 24 sekund.


// ==========================================
// ÚLOHA 6
// ==========================================

== Úloha 6: Zadání

Pekař upekl 42 rohlíků a 56 loupáků. Chce je zabalit do papírových sáčků tak, aby v každém sáčku byl stejný počet rohlíků a stejný počet loupáků a žádné pečivo nezbylo.

#pause

*Otázka:* Kolik nejvíce sáčků může naplnit?

== Úloha 6: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme pečivo na stejné díly → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $42 = 2 dot 3 dot 7$
  - $56 = 2^3 dot 7$

#pause

3. *Výpočet NSD:*

  $"NSD"(42, 56) = 2 dot 7 = 14$ sáčků.

#pause

4. *Počet kusů v jednom sáčku:*
  - Rohlíky: $42 / 14 = 3$
  - Loupáky: $56 / 14 = 4$

#pause

*Odpověď:* Pekař může naplnit maximálně 14 sáčků. V každém budou 3 rohlíky a 4 loupáky.


// ==========================================
// ÚLOHA 7
// ==========================================

== Úloha 7: Zadání

Vlaky linky S1 jezdí každých 10 minut, vlaky linky S2 každých 14 minut. Na nádraží se potkaly v 8:00 ráno.

#pause

*Otázka:* Za kolik minut se na nádraží opět potkají ve stejnou chvíli?

== Úloha 7: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme společný čas setkání → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $10 = 2 dot 5$
  - $14 = 2 dot 7$

#pause

3. *Výpočet NSN:*

  $"NSN"(10, 14) = 2 dot 5 dot 7 = 70$ minut.

#pause

70 minut = 1 hodina 10 minut.

#pause

*Odpověď:* Vlaky se opět potkají za 70 minut, tedy v 9:10.


// ==========================================
// ÚLOHA 8
// ==========================================

== Úloha 8: Zadání

Maminka má dvě stuhy o délce 75 cm a 90 cm. Chce je nastříhat na stejně dlouhé kousky tak, aby nezbyl žádný odstřižek a kousky byly co nejdelší.

#pause

*Otázka:* Jaká bude délka jednoho kousku stuhy?

== Úloha 8: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme stuhy na stejné díly a chceme maximální délku → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $75 = 3 dot 5^2$
  - $90 = 2 dot 3^2 dot 5$

#pause

3. *Výpočet NSD:*

  $"NSD"(75, 90) = 3 dot 5 = 15$ cm.

#pause

*Odpověď:* Délka jednoho kousku stuhy bude 15 cm.


// ==========================================
// ÚLOHA 9
// ==========================================

== Úloha 9: Zadání

Dvě ozubená kola do sebe zapadají. První kolo má 18 zubů, druhé 24 zubů.

#pause

*Otázka:* Kolikrát se musí první kolo otočit, aby se obě kola ocitla opět ve stejné výchozí pozici jako na začátku?

== Úloha 9: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Hledáme nejmenší společný násobek počtu zubů → *nejmenší společný násobek (NSN)*.

#pause

2. *Rozklad na prvočísla:*
  - $18 = 2 dot 3^2$
  - $24 = 2^3 dot 3$

#pause

3. *Výpočet NSN:*

  $"NSN"(18, 24) = 2^3 dot 3^2 = 72$ zubů.

#pause

4. *Výpočet otáček prvního kola:*

  $72 / 18 = 4$ otáčky.

#pause

*Odpověď:* První kolo se musí otočit 4krát.


// ==========================================
// ÚLOHA 10
// ==========================================

== Úloha 10: Zadání

Ve třídě je 30 chlapců a 24 dívek. Učitel chce vytvořit smíšená družstva na soutěž tak, aby v každém družstvu byl stejný počet chlapců a stejný počet dívek a nikdo nezbyl.

#pause

*Otázka:* Jaký největší počet družstev může vytvořit?

== Úloha 10: Řešení

*Postup řešení:*

#pause

1. *Identifikace problému:* Dělíme žáky na stejné skupiny → *největší společný dělitel (NSD)*.

#pause

2. *Rozklad na prvočísla:*
  - $30 = 2 dot 3 dot 5$
  - $24 = 2^3 dot 3$

#pause

3. *Výpočet NSD:*

  $"NSD"(30, 24) = 2 dot 3 = 6$ družstev.

#pause

4. *Složení družstva:*
  - Chlapci: $30 / 6 = 5$
  - Dívky: $24 / 6 = 4$

#pause

*Odpověď:* Učitel může vytvořit maximálně 6 družstev. V každém bude 5 chlapců a 4 dívky.
