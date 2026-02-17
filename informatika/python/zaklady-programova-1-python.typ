#set text(font: "Times New Roman", size: 8.5pt)
#set par(leading: 1.4em)
#set heading(numbering: "1.")
#set page(height: 21cm, width: 29.7cm, margin: 0.8cm)
#columns(3)[
= Základy programování (Python)



---

== Úvod

Programování je způsob, jak _dát počítači přesné pokyny_. Počítač sám nepřemýšlí – pouze vykonává příkazy, které mu zapíšeme pomocí _programovacího jazyka_.

V této brožuře používáme jazyk _Python_, který je čitelný, jednoduchý a velmi vhodný pro začátečníky.

---

== 1. Kód a komentáře

=== Co je kód?

Kód je zápis příkazů, které počítač vykonává _postupně shora dolů_.

=== Komentáře

Komentáře slouží k vysvětlení kódu. Počítač je ignoruje.

```python
# Toto je komentář
print("Ahoj světe!")  # Výpis textu
```

=== Cvičení

* Napiš program, který vypíše tvoje jméno.
* Přidej komentář vysvětlující, co program dělá.

---

== 2. Proměnné

=== Co je proměnná?

Proměnná je _pojmenované místo v paměti_, do kterého ukládáme hodnoty.

```python
vek = 13
jmeno = "Eva"
je_zak = True
```

=== Typy hodnot

- číslo (int, float)
- text (str)
- pravda / nepravda (bool)

=== Cvičení

* Vytvoř proměnnou `oblibeny_predmet`.
* Vypiš její hodnotu.

---

== 3. Podmínky

=== Co je podmínka?

Podmínka umožňuje programu _rozhodovat se_.

```python
body = 75

if body >= 60:
    print("Uspěl jsi")
else:
    print("Neuspěl jsi")
```

=== Důležité pravidlo

V Pythonu se bloky kódu _odsazují (indentují)_.

=== Logické operátory

- `>` větší než
- `<` menší než
- `==` rovná se
- `and` a zároveň
- `or` nebo

=== Cvičení

* Napiš program, který zjistí, zda je číslo větší než 10.*
* Přidej podmínku se dvěma kritérii.*

---

== 4. Cykly

=== Co je cyklus?

Cyklus opakuje stejný kód _vícekrát_.

```python
for i in range(1, 6):
    print(i)
```

=== Funkce `range()`

* `range(5)` → 0 až 4
* `range(1, 6)` → 1 až 5

=== Cvičení

* Vypiš čísla od 1 do 10.
* Vypiš všechna sudá čísla do 20.

---
#colbreak()
== 5. Funkce

=== Co je funkce?

Funkce je _pojmenovaný blok kódu_, který můžeme opakovaně použít.

```python
def pozdrav(jmeno):
    print("Ahoj", jmeno)

pozdrav("Adam")
```

=== Návratová hodnota

Funkce může vracet výsledek pomocí `return`.

```python
def scitani(a, b):
    return a + b

vysledek = scitani(3, 5)
print(vysledek)
```

=== Cvičení

* Vytvoř funkci, která vynásobí dvě čísla.
* Výsledek ulož do proměnné a vypiš.

---

== 6. Vstup a výstup

=== Vstup od uživatele

```python
jmeno = input("Zadej jméno: ")
print("Ahoj", jmeno)
```

=== Pozor na typy

Funkce `input()` vrací vždy text.

```python
vek = int(input("Zadej věk: "))
```

=== Cvičení

* Zeptej se uživatele na věk.
* Pokud je mu 18 a více, vypiš "Dospělý".

---

== Shrnutí

Základní prvky programování v Pythonu:

* kód a komentáře
* proměnné
* podmínky
* cykly
* funkce
* vstup a výstup

Tyto prvky tvoří _základ každého programu_ – od jednoduchých skriptů až po hry a aplikace.
]
