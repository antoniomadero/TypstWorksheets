S#set page(margin: 1cm, width: 29.7cm, height: 21cm)
#set par(leading: 1.4em)
#set text(font: "Arial", size: 8.5pt)
#columns(3)[
= Animace v p5.js

== Cíl hodiny

- pochopíš rozdíl mezi `setup()` a `draw()`
- zjistíš, jak vzniká animace
- vytvoříš pohyb pomocí proměnné
- použiješ podmínku `if`

---

== 1. Co je animace?

Animace vzniká tak, že se obraz _stále dokola překresluje z_ a některé hodnoty se mění.

*Doplň:*

* Funkce, která se spustí jen jednou po startu programu: `.........................`
* Funkce, která běží pořád dokola: `.........................`

---

== 2. Základní kostra programu

Doplň chybějící části:

```js
function ..........() {
  createCanvas(........, ........);
}

function ..........() {
  background(........);
}
```

Kolikrát se zavolá `setup()`?  ........................................

Kolikrát se zavolá `draw()`?  ........................................

---

== 3. Kreslení objektu

Zápis příkazu:

```js
circle(x, y, prumer);
```

Doplň:

- `x` určuje: ................................................
- `y` určuje: ................................................
- třetí hodnota určuje: ......................................

Doplň kód tak, aby se zobrazil kruh přibližně uprostřed plátna:

```js
circle(........, ........, ........);
```

---

== 4. Proměnná jako pozice

Aby se mohl objekt hýbat, použijeme proměnnou.

```js
let x = ........;

function setup() {
  createCanvas(400, 300);
}

function draw() {
  background(220);
  circle(x, ........, ........);
}
```

Proč se kruh zatím nehýbe?

............................................................................

............................................................................

---

== 5. Vznik animace

Aby se kruh pohyboval, musíme měnit proměnnou.

Doplň zápis změny hodnoty:

```js
x = x .... ....;
```

Celý úsek v `draw()`:

```js
circle(x, 150, 50);
x = x .... ....;
```

Vyzkoušej různé hodnoty a napiš, co se změní:

* při malé změně: ................................................
* při větší změně: ...............................................

---

== 6. Podmínka – zastavení na okraji

Zápis podmínky:

```js
if (podminka) {
  prikaz;
}
```

Doplň podmínku tak, aby se kruh pohyboval jen do okraje plátna:

```js
if (x < ..............) {
  x = x + 2;
}
```

Nápověda: šířka plátna se jmenuje `..................`

---

== 7. Samostatná práce

=== Úkol A – barva

Doplň příkaz pro změnu barvy:

```js
fill(........, ........, ........);
```

---

=== Úkol B – opačný směr

Uprav změnu proměnné:

```js
x = x .... ....;
```

---

=== Úkol C – návrat na začátek (výzva)

```js
if (x > ..............) {
  x = ........;
}
```

---

== 8. Shrnutí

Doplň věty:

- Animace vzniká tak, že se pořád ........................ obraz.
- Pohyb vzniká změnou ........................
- Funkce `draw()` běží ........................
]
