= Základy p5.js – pracovní list

Autor: ZŠ (8.–9. ročník)  
Téma: Úvod do kreativního programování v JavaScriptu (p5.js)

---

== Mini lekce 1: První plátno

*Cíl:* Umět vytvořit plátno a pochopit funkce `setup()` a `draw()`.

p5.js používá dvě hlavní funkce:
- `setup()` – spustí se jednou na začátku
- `draw()` – opakuje se stále dokola

```js
function setup() {
  createCanvas(400, 300);
}

function draw() {
  background(220);
}
```

*Úkol 1:*  
Změň velikost plátna na `500 × 400`.

*Úkol 2:*  
Změň barvu pozadí (zkus jinou hodnotu než 220).

---

== Mini lekce 2: Základní tvary a souřadnice

*Cíl:* Pochopit souřadnice *(x, y)* a kreslení tvarů.

```js
function draw() {
  background(220);
  circle(200, 150, 50);
  rect(50, 50, 80, 40);
}
```

- bod `(0, 0)` je vlevo nahoře
- `x` roste doprava, `y` dolů

*Úkol 1:*  
Posuň kruh více doprava.

*Úkol 2:*  
Změň velikost obdélníku.

---

== Mini lekce 3: Proměnná a pohyb

*Cíl:* Použít proměnnou a vytvořit pohyb.

```js
let x = 0;

function setup() {
  createCanvas(400, 300);
}

function draw() {
  background(220);
  circle(x, 150, 40);
  x = x + 2;
}
```

*Úkol 1:*  
Zrychli pohyb kruhu.

*Úkol 2:*  
Změň směr pohybu.

---

== Mini lekce 4: Myš a interakce

*Cíl:* Reagovat na pohyb myši.

```js
function setup() {
  createCanvas(400, 300);
}

function draw() {
  background(220);
  circle(mouseX, mouseY, 30);
}
```

*Úkol 1:*  
Zvětši kruh.

*Úkol 2:*  
Nakresli dva kruhy – jeden podle myši, druhý na pevném místě.

---

== Mini lekce 5: Podmínky (logika)

*Cíl:* Použít příkaz `if`.

```js
function draw() {
  background(220);

  if (mouseX > 200) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }

  circle(mouseX, mouseY, 40);
}
```

*Úkol 1:*  
Změň hranici `200` na jinou hodnotu.

*Úkol 2:*  
Změň barvy kruhu.

---

== Závěrečný úkol (dobrovolný)

Vytvoř jednoduchý obrázek nebo animaci, která:
- používá alespoň **jeden tvar**
- reaguje na **myš nebo klávesnici**
- obsahuje **alespoň jednu proměnnou**

---

*Poznámka:*  
Kód zkoušejte v online editoru: https://editor.p5js.org

