#let navy = rgb("303b4f")
#let ink = rgb("303846")
#let muted = rgb("626873")
#let rule = rgb("9aa0a8")
#let paper = rgb("ffffff")

#set document(title: "Životopis")
#set page(
  paper: "a4",
  margin: 0pt,
  fill: paper,
)
#set text(
  font: "Calibri",
  size: 9pt,
  fill: ink,
  lang: "cs",
)

#let sidebar-heading(title) = [
  #text(size: 13pt, weight: "bold", fill: white)[#title]
  #v(4pt)
  #line(length: 100%, stroke: 0.7pt + white)
  #v(8pt)
]

#let main-heading(title) = [

  #text(size: 13pt, weight: "bold", fill: ink)[#title]
  #v(-0.5em)
  #line(length: 100%, stroke: 0.7pt + muted)

]

#let contact(label, value) = [
  #text(size: 7.5pt, weight: "bold", fill: white)[#label]\
  #text(size: 7.2pt, fill: white)[#value]
  #v(8pt)
]

#let side-list(items) = {
  for item in items {
    text(size: 8.5pt, fill: white)[#item]
    linebreak()
    v(2pt)
  }
}

#let entry(period, institution, role, description) = {
  grid(
    columns: (23%, 77%),
    gutter: 8pt,
    text(size: 8pt, fill: muted)[#period\ #institution],
    [
      #text(weight: "bold", size: 8.5pt)[#role]\
      #text(size: 7.8pt, fill: muted)[#description]
    ],
  )
  v(4pt)
}

#grid(
  columns: (31%, 69%),
  gutter: 0pt,
  [
    #block(
      fill: navy,
      inset: (x: 25pt, top: 28pt, bottom: 28pt),
      height: 100%,
    )[
      #align(center)[
        #image("profile.png")
      ]
      #v(24pt)

      #sidebar-heading[Kontakt]
      #contact[Telefon][+420 607 714 352]
      #contact[E-mail][antoningerza\@gmail.com]
      #contact[Adresa][U Střelnice 1620/2, Šternberk 785 01]

      #sidebar-heading[Klíčové dovednosti]
      #side-list((
        [Analytické a logické myšlení],
        [Finanční gramotnost],
        [Analýza finančních produktů],
        [Komunikace a prezentace],
        [AI a digitální nástroje],
      ))

      #sidebar-heading[Technologické nástroje]
      #side-list((
        [Excel a Google Sheets],
        [JavaScript, HTML, CSS, PHP],
        [MySQL],
        [VS Code, GitHub, Typst],
        [AI: nástroje, agenti a vibe coding],
      ))

      #sidebar-heading[Jazykové znalosti]
      #side-list((
        [Angličtina -- STANAG 6001, 2. stupeň],
        [Němčina -- základy],
      ))


    ]
  ],
  [
    #block(
      inset: (x: 26pt, top: 48pt, bottom: 28pt),
    )[
      #text(size: 25pt, weight: "bold", fill: ink)[Mgr. Antonín Gerža]\
      #v(0.5em)
      #text(size: 12pt, fill: muted)[Pedagog, výchovný a kariérový poradce]
      #v(1em)
      #main-heading[O mně]
      #text(
        fill: muted,
      )[Mám dlouholeté zkušenosti s výukou žáků a studentů. Díky tomu dokáži převádět komplexní témata do srozumitelné podoby a vytvářet přehledné studijní a prezentační materiály.

        Jako matematik a informatik rád pracuji s daty a pomocí digitálních nástrojů je efektivně zpracovávám do přehledné formy.

        Od roku 2019
        se aktivně věnuji osobním financím a dlouhodobému investování se zaměřením\
        na akcie, ETF, dividendové strategie, diverzifikaci a řízení rizika.]




      #main-heading[Pracovní zkušenosti]

      #entry(
        [2024 -- 2025],
        [Univerzita Palackého v Olomouci],
        [Lektor na katedře matematiky],
        [Externí lektor v bakalářském studijním programu],
      )

      #entry(
        [2021 -- současnost],
        [ZŠ Svatoplukova 7, Šternberk],
        [Výchovný a kariérový poradce],
        [Poradenství pro žáky a rodiče, podpora při rozhodování o dalším vzdělávání \
          a profesním směřování. Komunikace s rodiči, řešení výchovných a vzdělávacích obtíží.],
      )

      #entry(
        [2013 -- současnost],
        [ZŠ Svatoplukova 7, Šternberk],
        [Učitel matematiky a informatiky],
        [Výuka matematiky a informatiky, tvorba vzdělávacích materiálů, aplikací
          a digitálních aktivit. Využití programování a moderních technologií při práci s daty.],
      )

      #entry(
        [2013 červen -- červenec 2013],
        [ESMEDIA Interactive],
        [Coder],
        [Tvorba a správa webových stránek a aplikací v technologiích HTML5 a CSS3.],
      )




      #main-heading[Vzdělání]

      #entry(
        [2021 -- 2023],
        [Univerzita Palackého v Olomouci],
        [Kvalifikační studium pro výchovné poradce],
        [Studium pro zvýšení odborné kvalifikace],
      )

      #entry(
        [2010 -- 2012],
        [Univerzita Palackého v Olomouci],
        [Mgr. -- Matematika],
        [Matematika pro 2. stupeň ZŠ a Výchova ke zdraví.],
      )

      #entry(
        [2007 -- 2010],
        [Univerzita Palackého v Olomouci],
        [Bc. -- Matematika],
        [Matematika se zaměřením na vzdělávání a Výchova ke zdraví.],
      )

      #entry(
        [2005 -- 2007],
        [Univerzita Palackého v Olomouci],
        [Matematika -- Výpočetní technika],
        [Studium učitelství na Přírodovědecké fakultě.],
      )

      #main-heading[Finanční a investiční zkušenosti]

      #entry(
        [2019 -- současnost],
        [Vlastní investiční portfolio],
        [Osobní správa financí a investic],
        [Dlouhodobá správa portfolia zahrnujícího akcie, ETF a podílové fondy. \
          Práce s diverzifikací, dividendovými strategiemi, základní fundamentální \
          analýzou, řízením rizika a sledováním investiční výkonnosti.],
      )

      #entry(
        [2020 -- současnost],
        [Investiční platformy],
        [Analýza finančních produktů],
        [Praktické zkušenosti s platformami Fio, DEGIRO, eToro, Patria, Portu \
          a Revolut. Orientace v základních finančních ukazatelích a českých \
          daňových povinnostech souvisejících s investováním.],
      )

      #entry(
        [2024 -- současnost],
        [Dlouhodobý investiční produkt],
        [DIP a dlouhodobé investování],
        [Srovnávání dostupných produktů a podmínek, správa investičních portfolií \
          a posuzování dlouhodobých daňových a investičních dopadů.],
      )
    ]
  ],
)
