= Základy programování

#set text(font: "Times New Roman", size: 11pt)
#set par(leading: 1.4em)
#set heading(numbering: "1.")

---

== Úvod

Programování je způsob, jak _dát počítači přesné pokyny_. Počítač sám nepřemýšlí – pouze vykonává příkazy, které mu člověk zapíše pomocí _kódu_.

Cílem této brožury je vysvětlit _základní stavební kameny programování_, které se objevují téměř ve všech programovacích jazycích.

---

== 1. Kód a komentáře

*Co je kód?*

Kód je zápis příkazů, které počítač vykonává _postupně shora dolů_.

*Komentáře*

Komentáře slouží k vysvětlení kódu. Počítač je ignoruje, ale programátorovi pomáhají se v kódu vyznat.

```js
// Toto je komentář
console.log("Ahoj světe!"); // Výpis textu
```

=== Cvičení

* Napiš kód, který vypíše tvoje jméno. *
Přidej komentář, který vysvětluje, co program dělá.

---

== 2. Proměnné

=== Co je proměnná?

Proměnná je _pojmenované místo v paměti_, do kterého ukládáme hodnoty.

```js
let vek = 13;
let jmeno = "Eva";
let jeZiak = true;
```

=== Typy hodnot

- číslo (number) 
- text (string)
- pravda / nepravda (boolean) 

=== Cvičení

- Vytvoř proměnnou `oblibenyPredmet`.
- Vypiš její hodnotu.

---

== 3. Podmínky

=== Co je podmínka?

Podmínka umožňuje programu _rozhodovat se_.

```js
let body = 75;

if (body >= 60) {
  console.log("Uspěl jsi");
} else {
  console.log("Neuspěl jsi");
}
```

=== Logické operátory

- `>` větší než
- `<` menší než
- `==` rovná se
- `&&` a zároveň
- `||` nebo

=== Cvičení

- Napiš program, který zjistí, zda je číslo sudé.
- Přidej podmínku se dvěma kritérii.

---

== 4. Cykly

=== Co je cyklus?

Cyklus opakuje stejný kód _vícekrát_.

```js
for (let i = 1; i <= 5; i++) {
  console.log(i);
}
```

=== Kdy cyklus použít?

- opakování výpisu
- práce s řadou čísel
- vykreslování objektů

=== Cvičení

- Vypiš čísla od 1 do 10.
- Vypiš všechna sudá čísla do 20.

---

== 5. Funkce

=== Co je funkce?

Funkce je _pojmenovaný blok kódu_, který můžeme opakovaně použít.

```js
function pozdrav(jmeno) {
  console.log("Ahoj " + jmeno);
}

pozdrav("Adam");
```

=== Výhody funkcí

- přehlednost
- znovupoužitelnost
- méně chyb

=== Cvičení

- Vytvoř funkci, která sečte dvě čísla.
- Funkci několikrát zavolej.

---

== 6. Vstup a výstup

=== Vstup od uživatele

Program může získávat informace od uživatele.

```js
let jmeno = prompt("Zadej jméno:");
alert("Ahoj " + jmeno);
```

=== Výstup

- text na obrazovku
- kreslení
- zvuk

=== Cvičení

- Zeptej se uživatele na věk.
- Podle věku vypiš zprávu.

---

== Shrnutí

Základní prvky programování:

* kód
* proměnné
* podmínky
* cykly
* funkce
* vstup a výstup

Tyto prvky tvoří _základ každého programu_ – od jednoduché hry až po velké aplikace.

