#import "@preview/touying:0.8.0": *

#import "@preview/presio:0.2.3": media, speaker-notes

// Inicializace Touying tématu

// --- Úvodní slide ---
= Matematika na ZŠ: Zlomky

// --- Běžný slide s matematikou ---
== Co je to zlomek?

Zlomek vyjadřuje část celku. Skládá se z:
- *Čitatele* (kolik částí máme) $-> 3$
- *Zlomkové čáry*
- *Jmenovatele* (na kolik částí je celek rozdělen) $-> 4$

Zápis zlomku v textu vypadá takto: $3/4$ nebo jako velký vzorec:
$ 1/2 + 2/4 = 4/4 = 1 $

// --- Slide s ONLINE videem (YouTube) ---
== Video: Úvod do zlomků z YouTube

Zde si ukážeme praktické vysvětlení na videu:

#align(center)[
  #media(
    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    width: 80%,
    aspect-ratio: 16 / 9,
    autoplay: false, // Video se nespustí samo, dokud nekliknete
  )
]

// --- Slide s LOKÁLNÍM videem (MP4) ---
== Video: Animace z počítače (místní soubor)

Můžete nahrát i vlastní MP4 soubor, který máte uložený ve složce s projektem.

#align(center)[
  #media(
    path("videa/zlomky_1_.mp4"),
    width: 75%,
  )
]
#speaker-notes[Zde nezapomeň žákům zdůraznit, že polovina koláče odpovídá dvěma čtvrtinám.]
