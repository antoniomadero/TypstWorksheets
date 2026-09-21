#set document(title: "Životopis - Mgr. Antonín Gerža", author: "Antonín Gerža")
#set page(margin: (x: 2cm, y: 2cm))
#set text(font: "Calibri", size: 11pt, lang: "cs")

// Definice vzhledu hlavních nadpisů
#show heading.where(level: 1): it => text(size: 15pt, weight: "bold", fill: rgb(20, 50, 100), bottom-edge: "descender")[
  #v(8pt)
  #it.body
  #v(2pt)
  #line(length: 100%, stroke: 1pt + rgb(20, 50, 100))
  #v(4pt)
]

// Hlavička s kontaktními údaji
#grid(
  columns: (1fr, auto),
  [
    #text(size: 22pt, weight: "bold")[Mgr. Antonín Gerža] \ //[cite: 1]
    #v(5pt)
    U Střelnice 2, 785 01 Šternberk \ //[cite: 1]
    +420 607 714 352 | antoningerza\@gmail.com \ //[cite: 1]
    linkedin.com/in/antoningerza/
  ],
  align(right)[
    // Zde můžete odkomentovat a přidat fotku:
    // #image("foto.jpg", width: 3cm)
  ],
)

= Profesní profil
Analyticky a technicky orientovaný profesionál s více než desetiletou praxí v předávání informací, mentoringu a kariérovém poradenství. Od roku 2019 se aktivně a do hloubky věnuji kapitálovým trhům a finančním produktům. Jsem zvyklý pracovat s daty a srozumitelně vysvětlovat složité koncepty. Hledám uplatnění v bankovním sektoru (Trinity Bank), kde mohu zúročit svůj proaktivní přístup, výborný přehled o investičních nástrojích a nadstandardní komunikační dovednosti.

= Zkušenosti ve financích a investicích
- *Aktivní správa portfolia a kapitálové trhy* (2019 -- současnost): Realizace obchodů s ETF a akciemi prostřednictvím brokerů (Degiro, eToro). Hluboká orientace v akciových, dluhopisových a smíšených podílových fondech.
- *Analýza bankovních produktů v ČR*: Detailní přehled o nabídkách a podmínkách většiny českých bank (včetně produktů Trinity Bank) a fintech platforem (Revolut), primárně v oblasti spořicích a investičních účtů.
- *Dlouhodobý investiční produkt (DIP)* (Leden 2024 -- současnost): Aktivní vyhodnocování a srovnávání poskytovatelů DIP a jejich poplatkových struktur na českém trhu.

= Pracovní zkušenosti a řízení projektů
*Základní škola Svatoplukova 7, Šternberk* //[cite: 1]
_Učitel matematiky a informatiky, Výchovný poradce_ #h(1fr) Září 2013 -- Současnost //[cite: 1]
- Analytická a koncepční práce, zavádění moderních IT technologií a systémů.
- Komunikace na denní bázi, poskytování kariérového poradenství. //[cite: 1]
- *Řízení a participace na projektech:*
  - OPJAK -- Kariérové poradenství, klub programování a robotiky (2021 -- současnost).
  - IKAP II -- Kariérové poradenství (2020 -- 2023).
  - OP VVV -- Rozvíjíme klíčové kompetence (2019 -- 2020).

= Vzdělání
*Kvalifikační studium pro Výchovné poradce* #h(1fr) 2021 -- 2023 //[cite: 1]
*Univerzita Palackého v Olomouci, Pedagogická fakulta* //[cite: 1]
_Matematika pro 2. stupeň ZŠ (Mgr.)_ #h(1fr) 2010 -- 2012 //[cite: 1]
_Matematika se zaměřením na vzdělávání (Bc.)_ #h(1fr) 2007 -- 2010 //[cite: 1]

= Znalosti a dovednosti
*Finance:* Detailní znalost bankovního trhu ČR, ETF, podílové fondy, DIP. \
*IT a technologie:* Typst, JavaScript, Python, HTML/CSS, práce s velkými jazykovými modely (LLM), pokročilá práce s PC. //[cite: 1]
*Soft skills:* Prezentační a komunikační dovednosti, schopnost srozumitelně vysvětlovat komplexní témata. \
*Jazyky:* Anglický jazyk (mírně pokročilý -- certifikát STANAG 6001), Německý jazyk (základy). //[cite: 1]
*Ostatní:* Řidičský průkaz sk. B (aktivní řidič). //[cite: 1]
