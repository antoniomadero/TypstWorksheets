#set page(paper: "a4", margin: (x: 1.5cm, y: 0.8cm))
#set text(size: 10pt, lang: "cs")
#set par(leading: 0.55em, spacing: 15pt)

#align(center)[
  #text(size: 15pt, weight: "bold")[Počítáme s čísly většími než milion]
  \
  #text(size: 11pt)[Slovní úlohy]
]
#v(0.15cm)

#let section(title) = {
  v(0.12cm)
  text(size: 11pt, weight: "bold")[#title]
  v(0.04cm)
}

#let problem(label, wording) = {
  text(weight: "bold")[#label]
  wording
  linebreak()
  v(0.5cm)
}

#section[Úroveň 1 – Rozjezd]
#section[1A. Sčítání]
#problem("1. ", [Muzeum navštívilo v jednom roce 1 245 680 lidí a v následujícím roce 986 450 lidí. Kolik lidí navštívilo muzeum za oba roky dohromady?])
#problem("2. ", [Do digitální knihovny přibylo 2 450 000 záznamů z jedné sbírky a 1 375 000 záznamů z druhé sbírky. Kolik záznamů přibylo celkem?])
#section[1B. Odčítání]
#problem("3. ", [Ve skladu bylo 4 500 000 kg obilí. K odběratelům odvezli 1 275 350 kg. Kolik kilogramů obilí zůstalo ve skladu?])
#problem("4. ", [Vodojem obsahoval 3 200 000 litrů vody. Během dne se spotřebovalo 1 845 600 litrů. Kolik litrů vody zůstalo?])

#section[Úroveň 2 – Procvičování]
#section[2A. Násobení]
#problem("5. ", [Tiskárna vytiskne každý den 185 000 letáků. Kolik letáků vytiskne za 7 dní, pokud bude každý den pracovat stejně?])
#problem("6. ", [Továrna vyrobí za jeden měsíc 246 500 lahví. Kolik lahví vyrobí za 6 měsíců, pokud bude každý měsíc vyrábět stejně?])
#section[2B. Dělení]
#problem("7. ", [Tiskárna má rozdělit 4 800 000 pracovních listů rovnoměrně mezi 4 školy. Kolik pracovních listů dostane každá škola?])
#problem("8. ", [Celkem 8 400 000 litrů vody se rozdělí rovnoměrně do 7 nádrží. Kolik litrů vody bude v každé nádrži?])

#section[Úroveň 3 – Výzva]
#section[3A. Dvě početní operace]
#problem("9. ", [Na šest prodejen poslali stejný počet her, celkem 7 500 000 her. Potom každá prodejna dostala ještě 125 000 her. Kolik her má nyní jedna prodejna?])
#problem("10. ", [Tiskárna vyráběla pět měsíců každý měsíc 320 000 knih. Poté z celkového počtu odeslala knihkupectvím 875 000 knih. Kolik knih zůstalo v tiskárně?])
#section[3B. Kombinované úlohy]
#problem("11. ", [Tiskárna má vyrobit 9 600 000 letáků rovnoměrně během 8 týdnů. V devátém týdnu vytiskne o 250 000 letáků více, než byl týdenní průměr. Kolik letáků vytiskne v devátém týdnu?])
#problem("12. ", [Sklad rozdělil 6 400 000 šroubků rovnoměrně do 4 zásilek. Z jedné zásilky už odebrali 325 000 šroubků. Kolik šroubků v této zásilce zůstalo?])
